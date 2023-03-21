use mlua::prelude::*;
use mlua::{chunk, Lua, Table};
use std::fs::File;
use std::io::Write;

fn main() -> LuaResult<()> {
    let lua = Lua::new();

    let tree3 = std::fs::read_to_string("tree.json").expect("Cannot load tree.json");
    let items3 = std::fs::read_to_string("items.json").expect("Cannot load items.json");

    let pob = lua
        .load(&std::fs::read_to_string(&"pob.lua").expect("Cannot open pob.lua"))
        .eval::<Table>()
        .expect("no pob");

    let xml = lua
        .load(chunk! {
            local xml = $pob:buildFromJSON($items3, $tree3):toXML();
            return xml;
        })
        .eval::<String>()
        .expect("No build from pob");

    File::create("build.xml")
        .expect("could not create file")
        .write(&xml.as_bytes())
        .expect("Could not write file");

    Ok(())
}
