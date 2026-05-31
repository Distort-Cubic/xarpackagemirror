--File: game_journal.lua

--I am not making any promises.
--This is just testing out having text boxes be specified
--in Lua as opposed to C++.

--The journal consists of two systems:
--System 1: This stores all text box text and the
--"paths" of all text boxes.
--A text box can have multiple paths.
--This system is loaded for the package.
--So, if the player reloads the game without changing the package,
--then system 1 does not need to be reloaded.
--The text box text is in language lang1
--but the paths are in language lang2.
--The reason for two languages is so a modder
--can create alternate paths, say in the language "english2".

--System 2: This stores which text boxes have been "unlocked"
--and it stores "unclocked nodes" for them.
--Which text boxes are unlocked is stored as a list of
--dynamic variables.  The loading of text box unlocked nodes from
--the dynamic variables list might be slow.
--System 2 needs to be reloaded when the player reloads their game.

-------------------------------------------------------------------------------
-- Entry points
-------------------------------------------------------------------------------

function p.__load_game()
    p.load_sys1()

    --Cannot be called before load_sys1.
    p.load_sys2()
end

-------------------------------------------------------------------------------
-- API: languages
-------------------------------------------------------------------------------
--lang1 is used for leaf nodes.
--lang2 is used for internal nodes.

function p.get_lang1()
    local var = "journal.lang1"
    ga_package_init_s(var, "english")
    return ga_package_get_s(var)
end

function p.set_lang1(str)
    local var = "journal.lang1"
    ga_package_init_s(var, "english")
    ga_package_set_s(var, str)
end

function p.get_lang2()
    local var = "journal.lang2"
    -- ga_package_init_s(var, "english")
    ga_package_init_s(var, "") --For faster loading.
    return ga_package_get_s(var)
end

--If the lang has changed we must reload system 2.
function p.set_lang2(new_lang)
    local var = "journal.lang2"
    -- ga_package_init_s(var, "english")
    ga_package_init_s(var, "") --For faster loading.
    local old_lang = ga_package_get_s(var)
    ga_package_set_s(var, new_lang)
    --
    if( new_lang ~= old_lang ) then
        --Reloading system 2.
        p.clear_sys2()
        p.load_sys2()
    end
end

-------------------------------------------------------------------------------
-- System1: Data
-------------------------------------------------------------------------------
--Do not call any of these functions
--from outside this script.

local sys1_lang_objects = {}

--Returns the specified language object
--(and creates it if it does not already exist).
function p.get_create_sys1_lang_obj(lang_str)
    local obj = sys1_lang_objects[lang_str]
    if( obj ~= nil ) then return obj end
    --Creating a new object.
    local new_obj = {}
    new_obj.txt_entries = {} --Maps strings to strings.
    new_obj.txt_cb_entries = {} --Maps strings to function references.
    new_obj.api_name_to_path = {} --Maps strings to arrays of strings.
    new_obj.alias_table = {} --Maps strings to strings.
    --
    sys1_lang_objects[lang_str] = new_obj
    return new_obj
end

--Once the package system1 is loaded, this is set to true
--(regardless of whether reload players that use this package).
local sys1_loaded = false

-------------------------------------------------------------------------------
-- System1: API to create text box text
-------------------------------------------------------------------------------

--To make code less repetitious.
local sys1_last_lang_str = ""
local sys1_last_api_name_str = ""

function p.sys1_set_last_lang_str(str)
    sys1_last_lang_str = str
end

--Load callbacks.
local sys1_load_cbs = {}

--Should be called by __load_game_early functions.
--This registers callback functions, which are called
--when the system1 is being loaded.
function p.reg_load_cb(str_name, cb_func)
    sys1_load_cbs[str_name] = cb_func
end

function p.add_txt(lang_str, api_name_str, txt_str)
    sys1_last_lang_str = lang_str
    sys1_last_api_name_str = api_name_str
    if( txt_str == nil ) then
        ga_print("*** Error: game_journal.add_txt got a nil text string")
        ga_print("           api_name = " .. api_name_str)
        ga_exit()
    end
    local lang_obj = p.get_create_sys1_lang_obj(lang_str)
    lang_obj.txt_entries[api_name_str] = txt_str
end

--Registers a function which is called back later
--to return the text string.
--The callback function takes one argument: the chunk_id
--of the chunk containing whatever textbox the user is viewer.
--A value of -1 is given as the chunk_id if we are viewing
--the text from the journal (for a non-anon entry).
function p.add_txt_cb(lang_str, api_name_str, func)
    sys1_last_lang_str = lang_str
    sys1_last_api_name_str = api_name_str
    if( func == nil ) then
        ga_print("*** Error: game_journal.add_txt_cb got a nil func reference")
        ga_print("           api_name = " .. api_name_str)
        ga_exit()
    end
    local lang_obj = p.get_create_sys1_lang_obj(lang_str)
    lang_obj.txt_cb_entries[api_name_str] = func
end

--The api entry text should already be added before calling this.
--The path_str should be semicolon separated.
function p.add_path_raw(lang_str, api_name_str, path_str)
    -- ga_print("game_journal.add_path_raw: " .. path_str)
    local lang_obj = p.get_create_sys1_lang_obj(lang_str)
    if( lang_obj.api_name_to_path[api_name_str] == nil ) then
        lang_obj.api_name_to_path[api_name_str] = {}
    end
    local array = lang_obj.api_name_to_path[api_name_str]
    array[#array+1] = path_str
end

--This is meant to be called immediately after add_txt or add_txt_cb.
--A shortcut for using "p.add_path_raw".
--Uses the "last used api name" for the api_name_str.
function p.add_path(path_str)
    p.add_path_raw(sys1_last_lang_str, sys1_last_api_name_str, path_str)
end

--The sorce_edge_str must with a @ character.
function p.add_edge_alias(source_edge_str, target_edge_str)
    local lang_str = sys1_last_lang_str
    local lang_obj = p.get_create_sys1_lang_obj(lang_str)
    -- ga_print("game_journal.add_edge_alias: " .. source_edge_str .. " " .. target_edge_str)
    lang_obj.alias_table[source_edge_str] = target_edge_str
end

-------------------------------------------------------------------------------
-- System1: Debugging API
-------------------------------------------------------------------------------

function p.sys1_debug_get_all_api_names(lang_str)
    local lang_obj = p.get_create_sys1_lang_obj(lang_str)
    local array = {}
    for k,v in pairs(lang_obj.api_name_to_path) do
        array[#array+1] = k
    end
    return array
end

-------------------------------------------------------------------------------
-- System1: Loading
-------------------------------------------------------------------------------

--We only do this once when the package is loaded.
--If the package is reloaded, we do not need to do it again.
function p.load_sys1()
    if sys1_loaded then return end
    sys1_loaded = true

    ga_print("game_journal.load_sys1")

    for k,v in pairs(sys1_load_cbs) do
        local func = v
        func() --Calling the callback.
    end
end

-------------------------------------------------------------------------------
-- System1: API for displaying text
-------------------------------------------------------------------------------

--The arg chunk_id can be -1.
function p.get_txt(api_name_str, chunk_id)
    local lang = p.get_lang1()
    local lang_obj = p.get_create_sys1_lang_obj(lang)
    local txt1 = lang_obj.txt_entries[api_name_str]
    if( txt1 ~= nil ) then return txt1 end
    --
    local cb_func = lang_obj.txt_cb_entries[api_name_str]
    if( cb_func ~= nil ) then
        local txt2 = cb_func(chunk_id)
        if( txt2 ~= nil ) then return txt2 end
    end
    if( txt == nil ) then return "TEXT NOT FOUND" end --Uh oh!
    return txt
end

-------------------------------------------------------------------------------
-- System2: Data
-------------------------------------------------------------------------------

local sys2_loaded = false
local sys2_last_player_name = ""

--Set to true once a text box is unlocked.
local sys2_is_dirty = false

local sys2_lang_objects = {}

function p.get_create_sys2_lang_obj(lang_str)
    local obj = sys2_lang_objects[lang_str]
    if( obj ~= nil ) then return obj end
    --Creating a new object.
    local new_obj = {}
    new_obj.root_node = nil
    sys2_lang_objects[lang_str] = new_obj
    return new_obj
end

-------------------------------------------------------------------------------
-- System2: Loading
-------------------------------------------------------------------------------

function p.load_sys2()
    --Safety check.
    if( not sys1_loaded ) then
        ga_print("*** Error: game_journal.load_sys2 called but")
        ga_print("sys1 is not loaded.")
        ga_exit()
    end

    local cur_player_name = ga_get_sys_s("game.player.name")
    if( cur_player_name == sys2_last_player_name and
        sys2_loaded and
        not sys2_is_dirty )
    then
        --Do not need to load.
        return
    end
    sys2_last_player_name = cur_player_name

    ga_print("game_journal.load_sys2")

    --Clearing the system.
    p.clear_sys2()

    --Unlocking entries that are listed in the dyn vars.
    ga_dyn_leaf_itr_start("dyn.xar.journal.unlocked")
    while(true) do
        local api_name_str = ga_dyn_leaf_itr_next()
        if( api_name_str == "" ) then break end
        -- ga_print("unlocking api_name from dyn vars: api_name = " .. api_name_str)
        p.unlock_raw(api_name_str)
    end

    sys2_loaded = true
    sys2_is_dirty = false --It is already false.
end

--We could be fancy and add a __save_game function
--(if the engine allowed such a thing) which would be
--called when the game is saved and it would set sys2_is_dirty
--to false.

-------------------------------------------------------------------------------
-- System2: API for unlocking entries
-------------------------------------------------------------------------------

function p.get_is_unlocked(api_name_str)
    local var = p.api_name_to_dyn_var_name(api_name_str)
    local exists = ga_dyn_exists(var)
    return exists
end

function p.unlock(api_name_str)
    if( p.get_is_unlocked(api_name_str) ) then
        --Already unlocked.
        return
    end
    --
    local var = p.api_name_to_dyn_var_name(api_name_str)
    ga_dyn_create_b(var)
    ga_dyn_set_b(var, true)
    --
    p.unlock_new(api_name_str)
end

-------------------------------------------------------------------------------
-- System2: More
-------------------------------------------------------------------------------

--Returns an array of all path strings assocaited to an api name.
function p.get_paths_for_api_name(lang_str, api_name_str)
    local lang_obj = p.get_create_sys1_lang_obj(lang_str)
    return lang_obj.api_name_to_path[api_name_str]
end

--Clearing all paths associated to an api name.
--This could be used by a mod to reassign paths to api names.
function p.clear_paths_for_api_name(lang_str, api_name_str)
    local lang_obj = p.get_create_sys1_lang_obj(lang_str)
    lang_obj.api_name_to_path[api_name_str] = {}
end

-------------------------------------------------------------------------------
-- System2: More internal
-------------------------------------------------------------------------------
--Do not call these from the outside.

function p.api_name_to_dyn_var_name(api_name_str)
    return "dyn.xar.journal.unlocked." .. api_name_str
end

--Unlocking an entry that the player has not unlocked before.
function p.unlock_new(api_name_str)
    --more!!!
    p.unlock_raw(api_name_str)
    sys2_is_dirty = true
end

function p.clear_sys2()
    sys2_lang_objects = {}
    sys2_loaded = false
end

function p.get_create_sys2_root_node(lang_str)
    local lang_obj = p.get_create_sys2_lang_obj(lang_str)
    local old_node = lang_obj.root_node
    if( old_node ~= nil ) then return old_node end
    local new_node = {}
    new_node.is_leaf = false
    new_node.children = {}
    lang_obj.root_node = new_node
    return new_node
end

function p.get_create_sys2_node(
    node, path_array, start_index, api_name_str)
--
    --Leaf node case.
    if( start_index > #path_array ) then
        --It is a leaf node.
        node.is_leaf = true
        node.leaf_api_name = api_name_str
        return
    end
    --Internal node case.
    local cur_str = path_array[start_index]
    if( node.children[cur_str] == nil ) then
        --Need to create the child node.
        local new_node = {}
        new_node.is_leaf = false
        new_node.children = {}
        node.children[cur_str] = new_node
    end
    -- p.sys2_dump_node(node)
    --Recursion.
    p.get_create_sys2_node(
        node.children[cur_str],
        path_array, start_index+1,
        api_name_str)
end

function p.sys2_dump_node(node)
    ga_print("Dumping game_journal sys2 node:")
    ga_print("  is_leaf = " .. tostring(node.is_leaf))
    if( node.children ~= nil ) then
        ga_print("  it has the children table")
        for k,v in pairs(node.children) do
            ga_print("  child: " .. tostring(k))
        end
    end
end

function p.unlock_raw(api_name_str)
    local cur_lang_str = p.get_lang2()
    local lang_obj = p.get_create_sys1_lang_obj(cur_lang_str)
    local array = lang_obj.api_name_to_path[api_name_str]
    if( array == nil ) then return end --Uh oh!
    for k,v in ipairs(array) do
        local path = v
        p.unlock_raw2(api_name_str, path)
    end
end

function p.unlock_raw2(api_name_str, path)
    if( path == nil ) then
        ga_print("*** Warning: in game_journal.unlock_raw, ")
        ga_print("could not find a path for " .. api_name_str)
        return
    end
    --String processing.
    --
    local path_array = {}
    path = path .. ';'
    for w in path:gmatch("(.-);") do
        local edge_str1 = w
        local edge_str2 = p.resolve_edge_str(edge_str1) --Might want to do more lazily.
        path_array[#path_array+1] = edge_str2
    end
    --
    local cur_lang_str = p.get_lang2()
    local root_node = p.get_create_sys2_root_node(cur_lang_str)
    local start_index = 1
    p.get_create_sys2_node(root_node, path_array, start_index, api_name_str)
end

-------------------------------------------------------------------------------
-- System2: API for browsing unlocked nodes
-------------------------------------------------------------------------------

--Returns nil if not found.
function p.get_sys2_node(path)
    local lang_str = p.get_lang2()
    --
    local path_array = {}
    local path2 = path .. ';'
    for w in path2:gmatch("(.-);") do
        path_array[#path_array+1] = w
    end
    --
    local cur_node = p.get_create_sys2_root_node(lang_str)
    if path ~= "" then
        for i = 1,#path_array do
            local cur_str = path_array[i]
            -- ga_print("cur_str = " .. cur_str)
            if( cur_node.children == nil ) then return {} end --Uh oh!
            local child_node = cur_node.children[cur_str]
            if( child_node == nil ) then return {} end --Uh oh!
            cur_node = child_node
        end
    end
    return cur_node
end

function p.get_unlocked_node_is_leaf(path)
    local cur_node = p.get_sys2_node(path)
    return cur_node.is_leaf
end

function p.get_unlocked_node_leaf_api_name(path)
    local cur_node = p.get_sys2_node(path)
    if( cur_node == nil ) then return "" end --Uh oh!
    local api_name = cur_node.leaf_api_name
    if( api_name == nil ) then return "" end --Uh oh!
    return api_name
end

function p.extract_priority_from_edge_str(str)
    local pattern = "{%d+}"
    local start_index, end_index = string.find(str, pattern)
    local default_priority = 100
    if( start_index == nil ) then
        return default_priority, str
    end
    local num_substr = string.sub(str, start_index+1, end_index-1)
    local new_str = string.sub(str, end_index+1, -1)
    local priority = tonumber(num_substr)
    if( priority == nil ) then priority = default_priority end --Uh oh!
    return priority, new_str
end

function p.strip_edge_str(str)
    local pattern = "{%d+}"
    return string.gsub(str, pattern, "")
end

--Could go elsewhere.
function p.str_starts_with(str, start)
  return str:sub(1, #start) == start
end

function p.resolve_edge_str(source_edge_str)
    if( not p.str_starts_with(source_edge_str, "@") ) then
        return source_edge_str
    end
    local lang_str = p.get_lang2()
    local lang_obj = p.get_create_sys1_lang_obj(lang_str)
    local target_edge_str = lang_obj.alias_table[source_edge_str]
    if( target_edge_str == nil ) then return "ALIAS_NOT_FOUND" end
    return target_edge_str
end

--Can only be called for non-leaf nodes (internal nodes).
function p.get_unlocked_node_button_names(path)
    local cur_node = p.get_sys2_node(path)
    if( cur_node.children == nil ) then return {} end --Uh oh!
    --
    local result1 = {}
    for k,v in pairs(cur_node.children) do
        result1[#result1+1] = k
    end
    --
    local result2 = {}
    for k,v in ipairs(result1) do
        local edge_str = v
        local priority, edge_str2 =
            p.extract_priority_from_edge_str(edge_str)
        local new_data = {}
        new_data.priority = priority
        new_data.str = edge_str
        result2[#result2+1] = new_data
    end
    table.sort(result2, function(a, b)
        return a.priority < b.priority
    end)
    --
    local result3 = {}
    for k,v in ipairs(result2) do
        result3[#result3+1] = v.str
    end
    --
    return result3
end
