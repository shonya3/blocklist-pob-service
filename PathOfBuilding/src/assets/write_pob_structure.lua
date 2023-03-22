local function split_table_into_primitives_functions_tables(t)
    local functions = {}
    local primitives = {}
    local tables = {}
    for name, value in pairs(t) do
        if type(value) == "function" then
            table.insert(functions, name)
        elseif type(value) == "table" then
            table.insert(tables, name)
        else
            primitives[name] = value
    end
end
return {primitives = primitives, tables = tables, functions = functions}
end



local function split_child_tables(table)
    local tables = {}
    local table_names = split_table_into_primitives_functions_tables(table)["tables"]
    for index, table_name in ipairs(table_names) do
        local table_by_name = table[table_name]
        if (type(table_by_name) == "table") then
            tables[table_name] = split_table_into_primitives_functions_tables(table_by_name)
        end
    end
    return tables
end

local function save_tables(root, tables)
    local json = require("json")
    for table_name, table_particles in pairs(tables) do
        local path = root .. "/" .. table_name .. ".json"
        local file = io.open(path, "w")
        file:write(json:encode(table_particles))
        file:close()
    end
end

local tables_by_parts = split_child_tables(build)
-- assets/, assets/F2 should exist
save_tables("assets/F1.json", {split_table_into_primitives_functions_tables(build)})
save_tables("assets/F2", tables_by_parts)