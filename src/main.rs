#![allow(unused_imports)]

use mlua::prelude::*;
use mlua::{chunk, Function, Lua, Table, Value};
use poe_api::CharacterJson;
use serde::{Deserialize, Serialize};
use std::time::Instant;

#[derive(Debug, Clone, Deserialize, Serialize)]
struct MainOutput {
    skill: String,
    dps: f32,
    ehp: f32,
}

mod poe_api;

#[tokio::main]
async fn main() -> LuaResult<()> {
    let lua = Lua::new();

    lua.load(&std::fs::read_to_string(&"pob.lua").expect("Cannot open pob.lua"))
        .exec()
        .expect("no pob");

    let load_api_timer = Instant::now();
    let full_time = Instant::now();
    let json_vec = poe_api::bulk_active_jsons(vec![
        "SHONYA3".into(),
        "kroiya".into(),
        "Sungeego".into(),
        "Yoba_Kun".into(),
        "CandyJunkie".into(),
    ])
    .await;

    dbg!(load_api_timer.elapsed().as_millis());

    let mut outputs: Vec<MainOutput> = Vec::new();

    for user in json_vec {
        if let Some(CharacterJson { tree, items }) = user {
            let output: MainOutput = lua
                .from_value(
                    lua.load(chunk! {
                    build:buildFromJSON($items, $tree)
                    build.configTab:BuildModList()
                    runCallback("OnFrame")
                    local input = build.calcsTab.input
                    local out = build.calcsTab.mainOutput
                    local skill = readSkillSelection()
                    return {
                        skill = skill.displayLabel,
                        dps = out.TotalDPS,
                        ehp = out.TotalEHP,
                    };})
                        .eval()
                        .unwrap(),
                )
                .unwrap();
            outputs.push(output);
        }
    }

    dbg!(outputs);
    dbg!(full_time.elapsed().as_millis());

    Ok(())
}
