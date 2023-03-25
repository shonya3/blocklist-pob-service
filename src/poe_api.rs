#![allow(dead_code)]
use mlua::UserData;
use serde::{Deserialize, Serialize};
use serde_json::Value;
use std::fmt::Display;
use tokio::task::JoinHandle;

#[derive(Debug, Clone, Copy)]
pub enum Realm {
    Pc,
    Sony,
    Xbox,
}

impl Default for Realm {
    fn default() -> Self {
        return Realm::Pc;
    }
}

impl Display for Realm {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Realm::Pc => write!(f, "pc"),
            Realm::Sony => write!(f, "sony"),
            Realm::Xbox => write!(f, "xbox"),
        }
    }
}

#[derive(Debug, Serialize, Deserialize, Clone)]
pub struct CharacterJson {
    pub tree: String,
    pub items: String,
}

pub async fn load_items(
    profile: String,
    character: String,
    realm: Option<Realm>,
) -> reqwest::Result<Value> {
    let url = format!("https://www.pathofexile.com/character-window/get-items?accountName={}&character={}&realm={}", {profile}, {character}, {realm.unwrap_or_default()});
    let resp = reqwest::get(url).await?.json::<Value>().await?;
    Ok(resp)
}
pub async fn load_tree(
    profile: String,
    character: String,
    realm: Option<Realm>,
) -> reqwest::Result<Value> {
    let url = format!("https://www.pathofexile.com/character-window/get-passive-skills?accountName={}&character={}&realm={}", {profile}, {character}, {realm.unwrap_or_default()});
    let resp = reqwest::get(url).await?.json::<Value>().await?;
    Ok(resp)
}

pub async fn load_character_json(
    profile: String,
    character: String,
    realm: Option<Realm>,
) -> Result<CharacterJson, &'static str> {
    let tree = tokio::spawn(load_tree(profile.clone(), character.clone(), realm.clone()));
    let items = tokio::spawn(load_items(profile, character, realm.clone()));
    match tokio::try_join!(tree, items) {
        Ok((tree, items)) => {
            let tree = tree.unwrap();
            let items = items.unwrap();
            return Ok(CharacterJson {
                items: items.to_string(),
                tree: tree.to_string(),
            });
        }
        Err(_) => return Err("Could not download character json"),
    }
}

pub async fn download_profile_page(profile: String) -> reqwest::Result<String> {
    let url = format!("https://ru.pathofexile.com/account/view-profile/{profile}/characters");
    let html = reqwest::get(url).await?.text().await?;
    Ok(html)
}

pub fn character_name_from_html(html: String) -> Option<String> {
    #[derive(Deserialize)]
    struct ProfilePage {
        name: String,
    }

    for line in html.lines() {
        if line.contains("new C") {
            let Some(start) = line.find("{") else {return None};
            let Some(end) = line.find("}") else {return None};

            let json_string = line
                .chars()
                .skip(start)
                .take(end - start + 1)
                .collect::<String>();
            let Ok(ProfilePage { name }) = serde_json::from_str(&json_string) else {return None};
            return Some(name);
        }
    }

    None
}

pub async fn active_character_json(profile: String) -> Option<CharacterJson> {
    let Ok(html) = download_profile_page(profile.clone()).await else {return None};
    let Some(character) = character_name_from_html(html) else {return None};
    match load_character_json(profile, character, Some(Realm::Pc)).await {
        Ok(json) => Some(json),
        Err(_) => None,
    }
}

pub async fn bulk_active_jsons(profiles: Vec<String>) -> Vec<Option<CharacterJson>> {
    let mut handles = Vec::with_capacity(profiles.len());
    for profile in profiles {
        handles.push(tokio::spawn(active_character_json(profile)));
    }

    let mut results = Vec::with_capacity(handles.len());
    for handle in handles {
        results.push(handle.await.unwrap());
    }

    return results;
}
