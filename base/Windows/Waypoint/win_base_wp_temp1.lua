--File: win_base_wp_temp1.lua

-------------------------------------------------------------------------------
-- Data
-------------------------------------------------------------------------------

--Button handles.
local press_a_handle = 1
local press_b_handle = 2

-------------------------------------------------------------------------------
-- Env vars
-------------------------------------------------------------------------------

function p.get_temp_wp_path()
    return ga_get_s("base.wp.temp_wp.path")
end

function p.set_temp_wp_path(path)
    ga_set_s("base.wp.temp_wp.path", path)
end

function p.has_temp_wp()
    local path = p.get_temp_wp_path()
    return (path ~= "")
end

-------------------------------------------------------------------------------
-- Window functions
-------------------------------------------------------------------------------

function p.__start(wid)
    local msg = "PRESS \"A\" TO TRAVEL FROM HERE AND"
    local x = 0.0 --Will change.
    local y = 0.75
    local w = 0.02
    local h = 0.04
    ga_win_widget_button_start(wid, press_a_handle, x, y, 0.02, 0.04, msg)
    ga_win_widget_button_center_x_at(wid, press_a_handle, 0.5)

    if( p.has_temp_wp() ) then
        local y = 0.45
        local msg = "PRESS \"B\" TO TRAVEL BACK TO"
        ga_win_widget_button_start(wid, press_b_handle, x, y, w, h, msg)
        ga_win_widget_button_center_x_at(wid, press_b_handle, 0.5)
    else
        ga_win_widget_button_end(wid, press_b_handle)
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
    if( ga_win_widget_go_back_button_process_input(wid) )
    then
        ga_window_pop()
    end

    local button = ga_win_widget_button_process_input(wid)
    if( button == press_a_handle or
        ga_win_key_pressed(wid, "A") )
    then
        if( p.has_temp_wp() ) then
            --Warning message.
            ga_window_push("win_base_wp_temp3")
        else
            ga_window_push("win_base_wp_temp2")
        end
        return
    end
    if( button == press_b_handle or
        ga_win_key_pressed(wid, "B") )
    then
        p.teleport()
        ga_window_pop_all()
    end
end

function p.__render(wid)
    local black = std.vec(0.0, 0.0, 0.0)
    ga_win_set_background(wid, black, 1.0)

    ga_win_set_char_size(wid, 0.02, 0.04)
    --The text above the following is a button.
    ga_win_txt_center(wid, 0.68, "SET HERE AS YOUR TEMPORARY WAYPOINT")

    if( p.has_temp_wp() ) then
        --The text above the following is a button.
        ga_win_txt_center(wid, 0.38, "YOUR TEMPORARY WAYPOINT")
    end
end

-------------------------------------------------------------------------------
-- Helper functions
-------------------------------------------------------------------------------

--Actually teleporting.
--Teleporting back to temp wp.
function p.teleport()
    local target_path = p.get_temp_wp_path()
    game_base_wp_system.teleport_target_path_only(target_path)
    win_base_wp_temp1.set_temp_wp_path("")
end
