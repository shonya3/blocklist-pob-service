#![allow(unused_imports)]

use mlua::prelude::*;
use mlua::{chunk, Function, Lua, Table, Value};
use poe_api::CharacterJson;
use serde::{Deserialize, Serialize};
use serde_json::json;
use std::fs::File;
use std::io::Write;
use std::path::PathBuf;
use std::time::{Duration, Instant};

#[derive(Debug, Clone, Deserialize, Serialize)]
struct MainOutput {
    skill: String,
    dps: f32,
    ehp: f32,
}

use crate::poe_api::Realm;

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
                    build:buildFromJSON($items, $tree):toXML()
                    build.configTab:BuildModList()
                    runCallback("OnFrame");
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

// #[tokio::main]
// async fn main() -> LuaResult<()> {
//     let lua = Lua::new();

//     let CharacterJson { items, tree } = poe_api::load_character_json(
//         String::from("kroiya"),
//         String::from("KroIyaPruningBranches"),
//         Some(Realm::Pc),
//     )
//     .await
//     .unwrap();

//     let xmlinput = std::fs::read_to_string("../../Havoc.xml").unwrap();

//     lua.load(&std::fs::read_to_string(&"pob.lua").expect("Cannot open pob.lua"))
//         .exec()
//         .expect("no pob");

//     let table: MainOutput = lua
//         .from_value(
//             lua.load(chunk! {
//                 local xml = build:buildFromJSON($items, $tree):toXML()
//                 // loadBuildFromXML($xmlinput)
//                 build.configTab.input["enemyLevel"] = 85
//                 build.configTab:BuildModList()
//                 printspect("enemy level "..build.configTab.enemyLevel)
//                 runCallback("OnFrame");
//                 local input = build.calcsTab.input
//                 printspect(build.configTab.placeholder)

//                 local out = build.calcsTab.mainOutput
//                 printspect(input)
//                 local skill = readSkillSelection()
//                 // writeTable("../../mainOutput.txt", build.calcsTab.mainOutput);

//                 // inspect(build.calcsTab.mainOutput);
//                 // print(build.calcsTab.mainOutput.TotalDPS);
//                 local info = {
//                     skill = skill.displayLabel,
//                     dps = out.TotalDPS,
//                     ehp = out.TotalEHP,
//                 };
//                 return info;
//                 // return xml;
//             })
//             .eval()
//             .expect("No build from pob"),
//         )
//         .unwrap();

//     Ok(())
// }

//188007
