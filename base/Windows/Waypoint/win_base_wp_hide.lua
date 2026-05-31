--File: win_base_wp_hide.lua

-------------------------------------------------------------------------------
-- Data
-------------------------------------------------------------------------------

--Button handles.
local button_f1_to_change = 1

local cur_handles = {}

-------------------------------------------------------------------------------
-- Window functions
-------------------------------------------------------------------------------

function p.__start(wid)
    ga_init_s("temp.menu.wp.search_str", "")
    local cur_search = ga_get_s("temp.menu.wp.search_str")

    local y = 0.8
    local w = 0.01
    local h = 0.02
    ga_win_widget_text_input_start(wid, y, w, h)
    ga_win_widget_text_input_set_text(wid, cur_search)
    ga_win_widget_text_input_set_enable_enter(wid, false)

    --Must agree with "win_base_wp.render_sortby_normal()".
    local x = 0.80
    local y = 0.78
    local w = 0.01
    local h = 0.02
    local msg = "(F1 TO CHANGE)"
    ga_win_widget_button_start(wid, button_f1_to_change, x,y,w,h, msg);

    local go_back_button_y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Go Back (ESC)"
    ga_win_widget_go_back_button_start(
        wid, go_back_button_y, w, h, go_back_msg)

    p.refresh_options(wid)
end

function p.__end(wid)
    --Nothing to do.
end

function p.__process_input(wid)
    if( ga_win_widget_go_back_button_process_input(wid) )
    then
        ga_window_pop()
    end

    local button = ga_win_widget_button_process_input(wid)
    if( button == button_f1_to_change or
        ga_win_key_pressed(wid, "F1") )
    then
        --Cycling through the search types.
        win_base_wp.advance_wp_normal_sortby_int()
        p.refresh_options(wid)
    end

    local entered_text = ga_win_widget_text_input_process_input(wid)

    local cur_search = ga_win_widget_text_input_get_text(wid)
    if( cur_search ~= ga_get_s("temp.menu.wp.search_str") ) then
        ga_set_s("temp.menu.wp.search_str", cur_search)
        p.refresh_options(wid)
    end

    local sel_num = ga_win_widget_large_list_process_input(wid)
    if( sel_num >= 0 ) then
        local wp_handle = cur_handles[sel_num + 1] --Lua arrays are 1 indexed.
        p.hide_wp(wid, wp_handle)
    end
end

function p.__render(wid)
    local black = std.vec(0.0, 0.0, 0.0)
    ga_win_set_background(wid, black, 1.0)

    local sel_num = ga_win_widget_large_list_get_selected(wid)
    local hovering_handle = cur_handles[sel_num + 1] --Lua arrays are 1 indexed.
    if( hovering_handle == nil ) then
        --Uh oh!
    else
        win_base_wp.render_extra_wp_info(wid, hovering_handle)
    end

    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.9, "SELECT A WAYPOINT TO HIDE")

    ga_win_set_char_size(wid, 0.01, 0.02)
    ga_win_txt_center(wid, 0.84, "SEARCH:")

    win_base_wp.render_sortby_normal(wid)
end

-------------------------------------------------------------------------------
-- Helper functions
-------------------------------------------------------------------------------

function p.refresh_options(wid)
    local old_sel_num = ga_win_widget_large_list_get_selected(wid)
    local cur_search = ga_win_widget_text_input_get_text(wid)
    local sort_type_int = win_base_wp.get_wp_normal_sortby_int()
    local sort_type_str = win_base_wp.wp_normal_sortby_int_to_str(sort_type_int)
    local hidden = false
    cur_handles = win_base_wp.get_submenu_wp_list(wid, hidden, cur_search, sort_type_str)
    ga_win_widget_large_list_set_selected_by_num(wid, old_sel_num)
end

-------------------------------------------------------------------------------
-- Payload
-------------------------------------------------------------------------------

function p.hide_wp(wid, wp_handle)
    local node = game_base_wp_system.get_wp_node_by_handle(wp_handle)
    if( node == nil ) then
        --Uh oh!
        ga_print("*** Error: There is no waypoint node with the handle " .. tostring(wp_handle))
        return
    end
    local path = node.path
    game_base_wp_system.toggle_hidden(path)
    p.refresh_options(wid)
end
