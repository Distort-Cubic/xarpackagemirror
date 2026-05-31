--File: game_base_wp_system.lua

--Note: wp = "waypoint".

--Note: A package can have its own waypoint system by relying on this file
--for the API, but at the same time having its own copy of game_base_wp_system_aux.lua
--which overrides the functions in "base/Game/game_base_wp_system_aux.lua".
--
--In an extreme case, a package could simply copy these files (and rename them)
--and modify them if one wanted significantly different behavior.

-------------------------------------------------------------------------------
-- Data
-------------------------------------------------------------------------------

local initialized = false

--This is a table.
--The key is the (integer) waypoint id (as listed
--in the name of a dynamc variable).
--The value is a "waypoint" node,
--which is a table hoding all the data about a waypoint.
--Every node should also be stored using dynamic variables.
local waypoints = {}

local next_free_index = 0

local path_to_handle = {}

-------------------------------------------------------------------------------
-- Acessing core data
-------------------------------------------------------------------------------

function p.is_path_in_system(path)
    local handle = path_to_handle[path]
    return (handle ~= nil)
end

function p.convert_path_to_handle(path)
    return path_to_handle[path]
end

function p.convert_handle_to_path(handle)
    local node = waypoints[handle]
    return node.path
end

--Will return nil if it does not exist.
function p.get_wp_node_by_handle(handle)
    return waypoints[handle]
end

function p.get_wp_node_by_path(path)
    local handle = p.convert_path_to_handle(path)
    return p.get_wp_node_by_handle(handle)
end

-------------------------------------------------------------------------------
-- Package specifc
-------------------------------------------------------------------------------
--Do not call this from outside this script.

function p.get_wp_prefix()
    return game_base_wp_system_aux.get_wp_dyn_var_prefix()
end

-------------------------------------------------------------------------------
-- Callback functions
-------------------------------------------------------------------------------

--There is a concern: soft loading.
--When a soft load is performed, we need to make sure we
--clear all local script variables, otherwise we get contamination
--from the last load.
function p.__load_game_early()
    initialized = false
    p.clear()
    p.init_maybe()
end

-------------------------------------------------------------------------------
-- Clearing
-------------------------------------------------------------------------------
--Do not call this from outside this script.

--Clears variables that are local to the script.
function p.clear()
    waypoints = {}
    next_free_index = 0
    path_to_handle = {}
end

-------------------------------------------------------------------------------
-- Creating a new node or waypoint
-------------------------------------------------------------------------------
--Do not call these from outside this script.

--Will update "next_free_index".
function p.advance_next_free_index()
    while( true ) do
        next_free_index = next_free_index + 1
        if( waypoints[next_free_index] == nil ) then
            return
        end
    end
end

--Returns a new waypoint node
--(but it is not stored anywhere).
function p.new_wp_node()
    local game_time = ga_get_game_time()
    --
    local wp = {}
    wp.first_enabled_time = game_time
    wp.previously_enabled = false --Not saved to dyn vars.
    wp.hidden = false
    wp.in_only = false
    wp.last_hid_time = -1.0
    wp.last_travel_failed = false
    wp.last_used_time = game_time
    wp.name = "NAME_NOT_SET"
    wp.custom_name = ""
    wp.path = "PATH_NOT_SET"
    return wp
end

--Once this is called, the wp is added and this
--cannot be undone (it will remain in the dyn vars).
--However, the wp can be hidden.
--The newly added waypoint will be set as enabled.
function p.add_new_wp(path, name, custom_name, is_in_only)
    --Safety.
    if( p.is_path_in_system(path) ) then
        ga_print("*** Error: In game_base_wp_system.add_new_wp the path is already in the system")
        return
    end

    local new_node = p.new_wp_node()
    new_node.first_enabled_time = ga_get_game_time()
    new_node.previously_enabled = true
    new_node.hidden = false --Just in case.
    new_node.in_only = is_in_only
    new_node.name = name
    new_node.custom_name = custom_name
    new_node.path = path

    local handle = next_free_index
    waypoints[handle] = new_node
    path_to_handle[path] = handle
    p.advance_next_free_index()

    p.flush_handle(handle)
end

-------------------------------------------------------------------------------
-- Reading and writing from dyn vars
-------------------------------------------------------------------------------
--Do not call these from outside this script.

--Writes the node in the waypoints table to the dyn vars.
function p.flush_handle(handle)
    local node = waypoints[handle]
    if( node == nil ) then
        ga_print("*** Error: game_base_wp_system.flush_handle passed unknown handle: " .. tostring(handle))
        return
    end

    --It might seem weird that we are including the package name in the prefix.
    --However, we do not want to confuse the waypoints that are part of different
    --waypoint systems (in the case that there are multiple systems).
    local prefix = p.get_wp_prefix() .. "." .. tostring(handle) .. "."
    
    ga_dyn_create_f(prefix .. "first_enabled_time")
    ga_dyn_create_b(prefix .. "hidden")
    ga_dyn_create_b(prefix .. "in_only")
    ga_dyn_create_f(prefix .. "last_hid_time")
    ga_dyn_create_b(prefix .. "last_travel_failed")
    ga_dyn_create_f(prefix .. "last_used_time")
    ga_dyn_create_s(prefix .. "name")
    ga_dyn_create_s(prefix .. "custom_name")
    ga_dyn_create_s(prefix .. "path")
    --
    ga_dyn_set_f(prefix .. "first_enabled_time",    node.first_enabled_time)
    ga_dyn_set_b(prefix .. "hidden",                node.hidden)
    ga_dyn_set_b(prefix .. "in_only",               node.in_only)
    ga_dyn_set_f(prefix .. "last_hid_time",         node.last_hid_time)
    ga_dyn_set_b(prefix .. "last_travel_failed",    node.last_travel_failed)
    ga_dyn_set_f(prefix .. "last_used_time",        node.last_used_time)
    ga_dyn_set_s(prefix .. "name",                  node.name)
    ga_dyn_set_s(prefix .. "custom_name",           node.custom_name)
    ga_dyn_set_s(prefix .. "path",                  node.path)
end

function p.load_waypoints_from_dyn_vars()
    --See the comment in the function "p.flush_handle".
    local prefix = p.get_wp_prefix()

    local temp_handles = {}
    ga_dyn_node_itr_start(prefix)
    while( true ) do
        local cur_handle_str = ga_dyn_node_itr_next()
        if( cur_handle_str == "" ) then break end
        local cur_handle = tonumber(cur_handle_str)
        temp_handles[cur_handle] = true
    end

    for handle,_ in pairs(temp_handles) do
        local handle_str = tostring(handle)
        local prefix2 = prefix .. "." .. handle_str .. "."

        local node = p.new_wp_node()

        --This is NOT stored in the dyn vars,
        --because it is true for each waypoint stored there.
        node.previously_enabled = true

        node.first_enabled_time = ga_dyn_get_f_maybe(prefix2 .. "first_enabled_time", -1.0)
        node.hidden             = ga_dyn_get_b_maybe(prefix2 .. "hidden", false)
        node.in_only            = ga_dyn_get_b_maybe(prefix2 .. "in_only", false)
        node.last_hid_time      = ga_dyn_get_f_maybe(prefix2 .. "last_hid_time", -1.0)
        node.last_travel_failed = ga_dyn_get_b_maybe(prefix2 .. "last_travel_failed", false)
        node.last_used_time     = ga_dyn_get_f_maybe(prefix2 .. "last_used_time", -1.0)
        node.name               = ga_dyn_get_s_maybe(prefix2 .. "name", "")
        node.custom_name        = ga_dyn_get_s_maybe(prefix2 .. "custom_name", "")
        node.path               = ga_dyn_get_s_maybe(prefix2 .. "path", "")

        waypoints[handle] = node
        path_to_handle[node.path] = handle
    end

    p.advance_next_free_index()
end

-------------------------------------------------------------------------------
-- Waypoint node helper functions
-------------------------------------------------------------------------------

function p.get_full_wp_name(wp_node)
    local base_name   = wp_node.name
    local custom_name = wp_node.custom_name
    if( custom_name == "" ) then
        return base_name
    else
        return base_name .. " [" .. custom_name .. "]"
    end
end

--It is red if the last travel failed.
--It is yellow if it is in_only.
function p.get_full_wp_name_colored(wp_node)
    local prefix = ""
    --The order matters.
    if( wp_node.in_only ) then prefix = "^xffff00" end
    if( wp_node.last_travel_failed ) then prefix = "^xff0000" end
    return prefix .. p.get_full_wp_name(wp_node)
end

-------------------------------------------------------------------------------
-- Initialization
-------------------------------------------------------------------------------

function p.init_maybe()
    if( initialized ) then return end
    initialized = true

    p.load_waypoints_from_dyn_vars()
end

-------------------------------------------------------------------------------
-- Some API functions
-------------------------------------------------------------------------------

--You can call this when creating a new game to enable waypoints
--remotely in the world.  You can call p.set_name afterwards
--if you do not like the name.
--This replaces the game API function ga_add_waypoint_sloppy.
--The chunk does NOT need to be in the active chunk tree.
function p.add_builtin_wp(path, override_name)
    local name = "BUILTIN: " .. override_name
    local custom_name = ""
    local is_in_only = false
    p.add_new_wp(path, name, custom_name, is_in_only)
end

--This replaces the game API function ga_add_waypoint_sloppy_in_only.
function p.add_builtin_wp_in_only(path, override_name)
    local name = "BUILTIN: " .. override_name
    local custom_name = ""
    local is_in_only = true
    p.add_new_wp(path, name, custom_name, is_in_only)
end

--Needed to enable the EMERGENCY waypoint from the world.
--For the emergency waypoint, you call this instead of "p.add_builtin_wp".
function p.add_emergency_wp(path)
    local node = p.get_wp_node(path)
    if( node == nil ) then
        --First, adding the waypoint.
        p.add_builtin_wp(path, "temp")
        --Now, setting the name correctly.
        p.set_name(path, "EMERGENCY")
        return
    end --Uh oh!
    --
    if( not node.previously_enabled ) then
        local name = "EMERGENCY"
        local custom_name = ""
        local in_only = false
        game_base_wp_system.add_new_wp(path, name, custom_name, in_only)
    end
end

--A bit slow.
function p.get_emergency_wp_path()
    for k,v in pairs(waypoints) do
        local name = v.name
        if( name == "EMERGENCY" ) then
            return v.path
        end
    end
    return "" --Uh oh!
end

function p.toggle_hidden(path)
    local handle = path_to_handle[path]
    if( handle == nil ) then
        ga_print("*** Error: In game_base_wp_system.toggle_hidden, the path is not found")
        return
    end

    local node = waypoints[handle]
    if( node == nil ) then return end --Uh oh!

    if( (not node.hidden) and node.name == "EMERGENCY" ) then
        game_base_wp_system_aux.add_msg("You cannot hide your emergency waypoint")
        ga_play_sound("error")
        return
    end

    node.hidden = not node.hidden

    if( node.hidden ) then
        node.last_hid_time = ga_get_game_time()
    end

    p.flush_handle(handle)
end

--You might want to call set_custom_name instead.
--Recall that every wp has both a name and a custon_name.
--These get combined when the wp is displayed in a menu.
function p.set_name(path, name)
    local handle = path_to_handle[path]
    if( handle == nil ) then
        ga_print("*** Error: In game_base_wp_system.set_name, the path is not found")
        return
    end

    local node = waypoints[handle]
    if( node == nil ) then return end --Uh oh!

    node.name = name

    p.flush_handle(handle)
end

function p.set_custom_name(path, custom_name)
    local handle = path_to_handle[path]
    if( handle == nil ) then
        ga_print("*** Error: In game_base_wp_system.set_custom_name, the path is not found")
        return
    end

    local node = waypoints[handle]
    if( node == nil ) then return end --Uh oh!

    node.custom_name = custom_name

    p.flush_handle(handle)
end

--This is slow if the path is not in this system.
--Returns a table with the members "is_new" and "node".
--If the wp is in the dyn vars,
--it returns the node from the local waypoints table.
--If not, it checks to see if it is in the world
--(the active chunk tree).
--If it is in the world, it returns a temporary wp node.
function p.get_wp_node(path)
    local ret = {}
    ret.is_new = false

    local handle = path_to_handle[path]
    if( handle ~= nil ) then
        --The wp exists in the dyn vars.
        local node = waypoints[handle]
        if( node == nil ) then return nil end --Uh oh!
        ret.is_new = false
        ret.node = node
        return ret
    end

    --Seeing if the wp is in the world.
    local chunk_id = ga_path_to_chunk_id(path)
    if( chunk_id < 0 ) then return nil end --The chunk is NOT in the world!

    local search_results = game_base_wp_system_aux.search_for_target_wp_in_chunk(chunk_id)
    if( not search_results.is_valid ) then return nil end

    --Found the wp block.
    local lbp = search_results.value
    local level = ga_chunk_id_to_level(chunk_id)
    local bp = ga_chunk_id_and_lbp_to_bp(chunk_id, lbp)
    --
    --
    ret.is_new = true
    ret.node = p.new_wp_node()
    ret.node.path = path
    ret.node.name = game_base_wp_system_aux.get_name_of_wp(level, bp)
    return ret
end

-------------------------------------------------------------------------------
-- For windows
-------------------------------------------------------------------------------

--Returns an array of wp nodes whose names match the given pattern.
--It is intended that the caller will then sort this array.
function p.get_wps_filtered(hidden, search_pattern)
    local ret = {}
    for k,v in pairs(waypoints) do
        local cur_node = v
        local full_name = p.get_full_wp_name(cur_node)
        if( cur_node.hidden == hidden ) then
            local matches = game_base_wp_system_aux.matches_fancy(full_name, search_pattern) --A little slow.
            if( matches ) then
                ret[#ret+1] = cur_node
            end
        end
    end
    return ret
end

--The arguments are wp nodes.
local function wp_comparator_name(a,b)
    full_name1 = p.get_full_wp_name(a)
    full_name2 = p.get_full_wp_name(b)
    return full_name1:lower() < full_name2:lower()
end

--The arguments are wp nodes.
local function wp_comparator_first_enabled(a,b)
    local first_enabled1 = a.first_enabled_time
    local first_enabled2 = b.first_enabled_time
    return first_enabled1 > first_enabled2
end

--The arguments are wp nodes.
local function wp_comparator_time_last_used(a,b)
    local last_used_time1 = a.last_used_time
    local last_used_time2 = b.last_used_time
    return last_used_time1 > last_used_time2
end

--The arguments are wp nodes.
local function wp_comparator_time_last_disabled(a,b)
    local last_hid_time1 = a.last_hid_time
    local last_hid_time2 = b.last_hid_time
    return last_hid_time1 > last_hid_time2
end

--It returns a table with two members: names and handles.
--These are two arrays.
function p.get_wps_sorted(hidden, search_pattern, comp_type, cur_handle)
    --Getting all nodes that match the pattern.
    local nodes = p.get_wps_filtered(hidden, search_pattern)
    --
    --Sorting the nodes.
    local wp_comparator = nil
    if( comp_type == "FULL NAME" ) then
        wp_comparator = wp_comparator_name
    elseif( comp_type == "TIME FIRST ENABLED" ) then
        wp_comparator = wp_comparator_first_enabled
    elseif( comp_type == "TIME LAST USED" ) then
        wp_comparator = wp_comparator_time_last_used
    elseif( comp_type == "TIME LAST DISABLED" ) then
        wp_comparator = wp_comparator_time_last_disabled
    end
    if( wp_comparator == nil ) then
        ga_print("*** Error: Unknown comparison type in game_base_wp_system.get_wps_sorted: " .. comp_type)
        ga_exit()
    end
    table.sort(nodes, wp_comparator)
    --
    --Returing the arrays.
    local ret = {}
    ret.names = {}
    ret.handles = {}
    for k,v in ipairs(nodes) do
        local node = v
        local handle = path_to_handle[node.path]
        local colored_name = ""
        if( handle == cur_handle ) then
            colored_name = "^x00ff00" .. p.get_full_wp_name(node)
        else
            colored_name = p.get_full_wp_name_colored(node)
        end
        ret.names[#ret.names+1] = colored_name
        ret.handles[#ret.handles+1] = handle
    end
    return ret
end

-------------------------------------------------------------------------------
-- Actually teleporting
-------------------------------------------------------------------------------

--Will teleport the player to their emergency waypoint.
function p.teleport_home()
    local target_handle = -1
    for k,v in pairs(waypoints) do
        local name = v.name
        if( name == "EMERGENCY" ) then
            target_handle = k
            break
        end
    end
    if( target_handle < 0 ) then
        ga_print("*** Error: EMERGENCY waypoint not found in game_base_wp_system.teleport_home")
        return
    end
    --
    p.teleport_target_only(target_handle)
end

--Teleports to the first waypoint whose full name
--matches the "pattern" according to the "matches fancy" function.
function p.teleport_to_first_matches_fancy(pattern)
    local target_handle = -1
    for k,v in pairs(waypoints) do
        local full_name = p.get_full_wp_name(v)
        if( game_base_wp_system_aux.matches_fancy(full_name, pattern) ) then
            target_handle = k
            break
        end
    end
    if( target_handle < 0 ) then
        ga_print("*** Error: EMERGENCY waypoint not found in game_base_wp_system.teleport_home")
        return
    end
    --
    p.teleport_target_only(target_handle)
end

--Another algorithm would be to clear the blocks above the source waypoint,
--and if the teleport fails, the player is sent to those cleared blocks.
function p.teleport(
    source_handle,
    target_handle)
--
    --Setting that we have used the source_wp.
    local source_wp_node = waypoints[source_handle]
    source_wp_node.last_used_time = ga_get_game_time()
    p.flush_handle(source_wp_node)
    --
    local target_wp_node = waypoints[target_handle]
    p.teleport_target_path_only(target_wp_node.path, target_handle)
end

function p.teleport_target_only(
    target_handle)
--
    local target_wp_node = waypoints[target_handle]
    p.teleport_target_path_only(target_wp_node.path, target_handle)
end

--The target handle can be negative,
--in which case the handle is not used.
function p.teleport_target_path_only(path, target_handle)
    ga_play_sound_menu("waypoint_travel")
    local dummy_offset = std.vec(7.5, 7.5, 7.5)
    ga_tele(path, dummy_offset)
    --
    --Passing information to the explore while function (ugly).
    local temp_var = "temp.base.waypoint.target_handle"
    ga_create_i(temp_var)
    ga_set_i(temp_var, target_handle)
    --The explore while function will correctly place the player.
    local explore_while_window = ""
    ga_explore_while("game_base_wp_system.teleport_explore_while", explore_while_window)
end

--This is called back by the engine while the player
--has been teleported to their final destination.
--Once this function returns false, the explore while loop is over.
--
--We could do something complex like wait until the two blocks
--about the target waypoint are loaded.  However, it might make sense
--to do a hack where we only allow waypoints to be created if they are
--not in the two top block layers of their chunk.  This way, we only need
--to load the chunk containing the target waypoint to determine if the
--teleportation is successful.
function p.teleport_explore_while()
    local viewer_chunk_id = ga_get_viewer_chunk_id()
    local search_results = game_base_wp_system_aux.search_for_target_wp_in_chunk(viewer_chunk_id)
    if( not search_results.is_valid ) then
        ga_print("did NOT find wp target.  Teleporting back")
        ga_tele_back()
        ga_window_push("win_base_wp_not_found")
        ga_play_sound_menu("error")
        --
        --Making the wp node as we failed to travel there.
        local temp_var = "temp.base.waypoint.target_handle"
        if( ga_exists(temp_var) ) then
            local target_handle = ga_get_i(temp_var)
            local target_wp_node = p.get_wp_node_by_handle(target_handle)
            if( target_wp_node ) then
                target_wp_node.last_travel_failed = true
                p.flush_handle(target_handle)
            end
        end
        --
        return false
    end
    --Found the wp block.
    local target_wp_lbp = search_results.value
    local target_wp_bp = ga_chunk_id_and_lbp_to_bp(viewer_chunk_id, target_wp_lbp)
    --
    --Making the 2 blocks above the wp empty, so we can safely teleport there.
    local viewer_level = ga_chunk_id_to_level(viewer_chunk_id)
    game_base_wp_system_aux.clear_area_around_target_wp(viewer_level, target_wp_bp)
    --
    --Moving the viewer's eyes.
    game_base_wp_system_aux.tele_same_level_next_to_wp(target_wp_bp)
    --
    --Marking the waypoint that we traveled there (if we can).
    local temp_var = "temp.base.waypoint.target_handle"
    if( ga_exists(temp_var) ) then
        local target_handle = ga_get_i(temp_var)
        local target_wp_node = p.get_wp_node_by_handle(target_handle)
        if( target_wp_node ) then
            target_wp_node.last_travel_failed = false
            p.flush_handle(target_handle)
        end
    end

    --Done the explore while loop.
    return false
end
