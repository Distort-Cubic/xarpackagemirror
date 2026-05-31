--File: win_base_wp.lua

--Submenus:
--"enable_disable".
--"travel".
--"travel_then_disable".
--"rename".
--"hide".
--"unhide".
--"travel_without_enabling".
--"temp_waypoint".

--Node: This can be made a bit faster,
--but I am prioritizing readability.

-------------------------------------------------------------------------------
-- Current waypoint
-------------------------------------------------------------------------------
--Recall that this window is openend by using a waypoint entity.
--That entity is called the "current waypoint".
--That waypoint may or may not be "in the system",
--meaning it is stored in dynamic variables.

--Used in case a submenu makes a change that requires
--the options list to be refreshed.
local need_to_refresh = false

--We only cache the current wp node if it is NOT in the system
--(so it has never been enabled before).
local cached_cur_wp_node = nil

--This can be called from other scripts.
function p.clear_cached_cur_wp_node()
    cached_cur_wp_node = nil
end

--Gets the (string) path of the current waypoint.
function p.get_cur_path()
    --The chunk_id is set by the waypoint entity
    --that launches this menu.
    local var = "temp.base_wp.chunk_id"
    local chunk_id = ga_get_i(var)
    if( chunk_id < 0 ) then return "" end --Uh oh!
    return ga_chunk_id_to_path(chunk_id)
end

function p.get_cur_handle()
    local path = p.get_cur_path()
    return game_base_wp_system.convert_path_to_handle(path)
end

--The wp node for the waypoint that the menu is for.
function p.get_cur_node()
    if( cached_cur_wp_node ) then
        return cached_wp_node
    else
        local path = p.get_cur_path()
        local data = game_base_wp_system.get_wp_node(path)
        if( data == nil ) then return nil end --Uh oh!
        if( data.is_new ) then
            --We only cache the wp node if it is "new",
            --because that is the situation in which it
            --is slowest to recreate it.
            cached_wp_node = data.node
        end
        return data.node
    end
end

function p.get_is_in_only()
    return ga_b_exists_and_true("temp.base_wp.in_only")
end

--This can be called from submenus.
function p.get_cur_custom_name()
    local node = p.get_cur_node()
    if( node == nil ) then return "ERROR" end
    return node.custom_name
end

function p.enable_cur_wp()
    local path = p.get_cur_path()
    local node = p.get_cur_node()
    local name = node.name
    local custom_name = node.custom_name
    local is_in_only = p.get_is_in_only()

    p.clear_cached_cur_wp_node() --To avoid problems.

    game_base_wp_system.add_new_wp(path, name, custom_name, is_in_only)
end

function p.get_cur_wp_enabled()
    local node = p.get_cur_node()
    if( not node.previously_enabled ) then return false end
    return (not node.hidden)
end

function p.get_cur_wp_previously_enabled()
    local node = p.get_cur_node()
    return node.previously_enabled
end

-------------------------------------------------------------------------------
-- The enable/disable button (for ease of use)
-------------------------------------------------------------------------------

local button_enable_disable = 1

function p.create_enable_disable_button(wid)
    local dummy_text = ""
    local x = 0.0 --Will change.
    local y = 0.80
    local w = 0.02
    local h = 0.04
    ga_win_widget_button_start(wid, button_enable_disable, x, y, w, h, dummy_text)
end

--Helper function.
--Called by a submenu.
--Returns the text which should be on the enable/disable button.
function p.get_enable_disable_button_text()
    local node = p.get_cur_node()
    local text = ""
    if( node == nil ) then
        text = "ERROR" --Uh oh!
    else
        if( not node.previously_enabled ) then
            text = "^xff0000DISABLED"
        else
            if( node.hidden ) then
                text = "^xffff00HIDDEN"
            else
                text = "^x00ff00ENABLED"
            end
        end
    end
    return text
end

function p.refresh_enable_disable_button_text(wid)
    local text = p.get_enable_disable_button_text()
    ga_win_widget_button_set_text(wid, button_enable_disable, text)
    ga_win_widget_button_center_x_at(wid, button_enable_disable, 0.5)
end

--Can be called by submenus.
function p.toggle_enable_disable()
    local node = p.get_cur_node()
    if( node == nil ) then return end --Uh oh!

    if( not node.previously_enabled ) then
        --It has never been enabled before.
        --Enabling it for the first time.
        p.enable_cur_wp()
    else
        --The wp has been enabled before.
        --We just need to toggle the hidden var.
        local path = p.get_cur_path()
        game_base_wp_system.toggle_hidden(path)
    end

    --For sanity.
    p.clear_cached_cur_wp_node()

    need_to_refresh = true
end

function p.enable_disable_button_handler(wid)
    p.toggle_enable_disable()

    p.refresh_options(wid)
end

-------------------------------------------------------------------------------
-- Sortby int
-------------------------------------------------------------------------------

--Valid values for the int: 0,1,2.
function p.get_wp_normal_sortby_int_max()
    return 2
end

function p.get_wp_normal_sortby_int()
    return ga_get_i("base.wp.sortby_int")
end

function p.advance_wp_normal_sortby_int()
    local x = ga_get_i("base.wp.sortby_int")
    x = x + 1
    if( x > p.get_wp_normal_sortby_int_max() ) then
        x = 0
    end
    ga_set_i("base.wp.sortby_int", x)
end

--Be careful changing these: it is fragile!
--Code will test the current sort by string
--agains these values.
function p.wp_normal_sortby_int_to_str(x)
    if( x == 0 ) then return "FULL NAME" end
    if( x == 1 ) then return "TIME FIRST ENABLED" end
    if( x == 2 ) then return "TIME LAST USED" end
    return "ERROR"
end

-------------------------------------------------------------------------------

--Valid values for the int: 0,1,2.
function p.get_wp_unhide_sortby_int_max()
    return 2
end

function p.get_wp_unhide_sortby_int()
    return ga_get_i("base.wp.sortby_unhide_int")
end

function p.advance_wp_unhide_sortby_int()
    local x = ga_get_i("base.wp.sortby_unhide_int")
    x = x + 1
    if( x > p.get_wp_unhide_sortby_int_max() ) then
        x = 0
    end
    ga_set_i("base.wp.sortby_unhide_int", x)
end

--Be careful changing these: it is fragile!
--Code will test the current sort by string
--agains these values.
function p.wp_unhide_sortby_int_to_str(x)
    if( x == 0 ) then return "FULL NAME" end
    if( x == 1 ) then return "TIME FIRST ENABLED" end
    if( x == 2 ) then return "TIME LAST DISABLED" end
    return "ERROR"
end

-------------------------------------------------------------------------------
-- Window functions
-------------------------------------------------------------------------------

function p.__start(wid)
    p.clear_cached_cur_wp_node()

    p.create_enable_disable_button(wid)

    p.refresh_options(wid)

    local go_back_button_y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Go Back (ESC)"
    ga_win_widget_go_back_button_start(
        wid, go_back_button_y, w, h, go_back_msg)
end

function p.__end(wid)
    p.clear_cached_cur_wp_node()
end

function p.refresh_options(wid)
    local str1 = "ERROR"
    local path = p.get_cur_path()
    local node = p.get_cur_node(path)
    if( node ~= nil ) then
        if( node.previously_enabled ) then
            if( p.get_cur_wp_enabled() ) then
                str1 = "Hide (Press N)"
            else
                str1 = "Unhide (Press Y for default name)"
            end
        else
            str1 = "Enable (Press Y for default name)"
        end
    end
    --
    local in_only = p.get_is_in_only()
    --
    local min_y = 0.20
    local max_y = 0.75
    if( in_only ) then
        min_y = 0.30
        max_y = 0.65
    end
    local char_w = 0.015
    local char_h = 0.03
    local col = {x=0.0, y=0.5, z=0.5}
    
    local options = {}
    options[#options+1] = str1
    if( not in_only ) then options[#options+1] = "Travel" end
    if( not in_only ) then options[#options+1] = "Travel and hide this waypoint" end
    options[#options+1] = "Rename a waypoint"
    options[#options+1] = "Hide a waypoint"
    options[#options+1] = "Unhide a hidden waypoint"
    if( not in_only ) then options[#options+1] = "Travel without enabling" end
    if( not in_only ) then options[#options+1] = "Temporary waypoint" end
    --
    ga_win_widget_small_list_start(wid, 
        min_y, max_y, char_w, char_h,
        col, options)

    --The travel option is the most frequently used.
    ga_win_widget_small_list_set_selected(wid, 1)

    need_to_refresh = false

    ga_print("win_base_wp.refresh_options end")
end

function p.__process_input(wid)
    if( ga_win_widget_go_back_button_process_input(wid) or
        ga_win_key_pressed(wid, "F") )
    then
        ga_window_pop()
    end

    local button = ga_win_widget_button_process_input(wid)
    if( button == button_enable_disable ) then
        p.enable_disable_button_handler(wid)
    end
    if( ga_win_key_pressed(wid, "Y") and
        not p.get_cur_wp_enabled() )
    then
        p.enable_disable_button_handler(wid)
    end
    if( ga_win_key_pressed(wid, "N") and
        p.get_cur_wp_enabled() )
    then
        p.enable_disable_button_handler(wid)
    end

    local sel_num = ga_win_widget_small_list_process_input(wid)
    local sel_str = ga_win_widget_small_list_get_entry(wid, sel_num)
    if( sel_str:find('^Enable') ~= nil or
        sel_str:find('^Unhide %(') ~= nil )
    then
        ga_window_push("win_base_wp_enable_disable")
    elseif( sel_str == "Hide (Press N)" ) then
        p.enable_disable_button_handler(wid)
    elseif( sel_str == "Travel" ) then
        if( not p.get_cur_wp_enabled() ) then
            --Error popup.
            ga_play_sound_menu("error")
            ga_window_push("win_base_wp_error_you_can_only_travel_if_you_enable")
            return
        end
        ga_window_push("win_base_wp_travel")
        return
    elseif( sel_str == "Travel and hide this waypoint" ) then
        if( not p.get_cur_wp_enabled() ) then
            --Error popup.
            ga_play_sound_menu("error")
            ga_window_push("win_base_wp_error_you_can_only_travel_if_you_enable")
            return
        end
        ga_window_push("win_base_wp_travel_and_hide")
        return
    elseif( sel_str == "Rename a waypoint" ) then
        ga_window_push("win_base_wp_rename1")
    elseif( sel_str == "Hide a waypoint" ) then
        ga_window_push("win_base_wp_hide")
    elseif( sel_str == "Unhide a hidden waypoint" ) then
        ga_window_push("win_base_wp_unhide")
    elseif( sel_str == "Travel without enabling" ) then
        if( p.get_cur_wp_previously_enabled() ) then
            ga_window_push("win_base_wp_travel_without_enable2")
            return
        else
            ga_window_push("win_base_wp_travel_without_enable1")
            return
        end
    elseif( sel_str == "Temporary waypoint" ) then
        ga_window_push("win_base_wp_temp1")
        return
    end
end

--Helper function.
--Called by a submenu.
function p.render_wp_name(wid)
    local node = p.get_cur_node()
    if( node == nil ) then return end --Uh oh!

    local full_name = game_base_wp_system.get_full_wp_name(node)
    ga_win_set_char_size(wid, 0.015, 0.03) --Ok?
    ga_win_txt_center(wid, 0.87, full_name)

    --The button is rendered automatically.
    p.refresh_enable_disable_button_text(wid)
end

function p.__render(wid)
    local yellow = std.vec(1.0, 1.0, 0.0)

    --Forcing it.
    if( need_to_refresh ) then
        p.refresh_options(wid)
    end

    local black = std.vec(0.0, 0.0, 0.0)
    ga_win_set_background(wid, black, 1.0)

    if( p.get_is_in_only() ) then
        ga_win_set_front_color(wid, yellow)
        ga_win_set_char_size(wid, 0.015, 0.03)
        local msg = "YOU CAN TRAVEL TO THIS LOCATION (WHEN ENABLED), BUT NOT FROM IT"
        ga_win_txt_center(wid, 0.95, msg)
        ga_win_set_front_color_default(wid)
    end

    --The mutable_text_box widget is rendered automatically
    --(because it was created).

    p.render_wp_name(wid)
end

-------------------------------------------------------------------------------
-- Submenu widgets
-------------------------------------------------------------------------------

--This is a bit weird: Some submenus have a list of waypoints.
--We generate this list here.
--Returns a list of the handles of all waypoints in the list.
function p.get_submenu_wp_list(submenu_wid, hidden, search_pattern, comp_type)
    local cur_handle = p.get_cur_handle()
    local data = game_base_wp_system.get_wps_sorted(hidden, search_pattern, comp_type, cur_handle)

    local options = {}
    for k,v in ipairs(data.names) do
        options[#options+1] = v
    end

    local min_y = 0.15
    -- local min_y = 0.10
    local max_y = 0.73
    local w = 0.015
    local h = 0.03
    local color = std.vec(0.0, 0.5, 0.5)
    local num_display_lines = 13
    ga_win_widget_large_list_start(
        submenu_wid, min_y, max_y, w, h, color,
        num_display_lines, options);
    local scroll_bar_x = 0.95
    local scroll_bar_min_y = 0.05
    local scroll_bar_max_y = 0.75
    ga_win_widget_large_list_enable_scroll_bar(
        submenu_wid, scroll_bar_x)
    ga_win_widget_large_list_set_scroll_y_min_max(
        submenu_wid, scroll_bar_min_y, scroll_bar_max_y)

    return data.handles
end

function p.render_extra_wp_info(submenu_wid, handle)
    local node = game_base_wp_system.get_wp_node_by_handle(handle)

    local min_x = 0.01
    ga_win_set_char_size(submenu_wid, 0.01, 0.02)
    local path = node.path
    local level = game_base_wp_system_aux.path_str_to_level(path)
    ga_win_txt(submenu_wid, min_x, 0.80, "LEVEL: " .. tostring(level))
    --
    local game_time = ga_get_game_time()
    local last_used_time = node.last_used_time
    local last_used_str = game_base_wp_system_aux.ago_str(game_time, last_used_time)
    ga_win_txt(submenu_wid, min_x, 0.78, "LAST USED: " .. last_used_str)
    --
    local first_enabled_time = node.first_enabled_time
    local first_enabled_str = game_base_wp_system_aux.ago_str(game_time, first_enabled_time)
    ga_win_txt(submenu_wid, min_x, 0.76, "ENABLED: " .. first_enabled_str)
end

function p.render_sortby_normal(submenu_wid)
    ga_win_set_char_size(submenu_wid, 0.01, 0.02)
    local min_x = 0.80
    ga_win_txt(submenu_wid, min_x, 0.82, "SORTING BY:")
    --
    local sortby_int = p.get_wp_normal_sortby_int()
    local sortby_str = p.wp_normal_sortby_int_to_str(sortby_int)
    ga_win_txt(submenu_wid, min_x, 0.80, sortby_str)
    --
    --The "F1 TO CHANGE" text is part of a button
    --that the submenu owns.
end

function p.render_sortby_unhide(submenu_wid)
    ga_win_set_char_size(submenu_wid, 0.01, 0.02)
    local min_x = 0.82
    ga_win_txt(submenu_wid, min_x, 0.82, "SORTING BY:")
    --
    local sortby_int = p.get_wp_unhide_sortby_int()
    local sortby_str = p.wp_unhide_sortby_int_to_str(sortby_int)
    ga_win_txt(submenu_wid, min_x, 0.80, sortby_str)
    --
    --The "F1 TO CHANGE" text is part of a button
    --that the submenu owns.
end
