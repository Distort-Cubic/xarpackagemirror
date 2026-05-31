--File: win_base_wp_rename2.lua

-------------------------------------------------------------------------------
-- Data
-------------------------------------------------------------------------------

local cur_handle = nil

function p.set_cur_handle(handle)
    cur_handle = handle
end

-------------------------------------------------------------------------------
-- Window functions
-------------------------------------------------------------------------------

function p.__start(wid)
    local y = 0.45
    local w = 0.01
    local h = 0.02
    ga_win_widget_text_input_start(wid, y, w, h)

    local wp_node = game_base_wp_system.get_wp_node_by_handle(cur_handle)
    if( wp_node == nil ) then
        ga_print("*** Error: Cannot get wp_node in win_base_wp_rename2.__start")
    else
        local custom_name = wp_node.custom_name
        ga_win_widget_text_input_set_text(wid, custom_name)
    end

    local go_back_button_y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Go Back (ESC)"
    ga_win_widget_go_back_button_start(
        wid, go_back_button_y, w, h, go_back_msg)
end

function p.__end(wid)
    --Nothing to do.
end

function p.__process_input(wid)
    if( ga_win_widget_go_back_button_process_input(wid) ) then
        ga_window_pop()
        return
    end

    local entered_text = ga_win_widget_text_input_process_input(wid)

    if( ga_win_key_pressed(wid, "ENTER") or
        entered_text ~= "" )
    then
        local wp_node = game_base_wp_system.get_wp_node_by_handle(cur_handle)
        if( wp_node == nil ) then
            ga_print("*** Error: wp_node is nil in win_base_wp_rename2.__process_input")
            ga_exit()
            --Uh oh!
        else
            local path = wp_node.path
            game_base_wp_system.set_custom_name(path, entered_text)
        end
        win_base_wp_rename1.make_dirty()
        ga_window_pop()
        return
    end
end

function p.__render(wid)
    local black = std.vec(0.0, 0.0, 0.0)
    ga_win_set_background(wid, black, 1.0)

    ga_win_set_char_size(wid, 0.02, 0.04)
    local text = "ENTER A NEW NAME"
    ga_win_txt_center(wid, 0.9, text)

    ga_win_set_char_size(wid, 0.01, 0.02)
    local text = "YOU MUST PRESS ENTER TO SET THE NAME"
    ga_win_txt_center(wid, 0.4, text)
end
