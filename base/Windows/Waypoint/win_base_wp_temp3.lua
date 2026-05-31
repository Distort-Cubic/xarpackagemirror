--File: win_base_wp_temp3.lua

local press_y_handle = 1
local press_n_handle = 2

local yn_y = 0.25

function p.__start(wid)
    ga_win_widget_button_start(wid, press_y_handle, 0.4, yn_y, 0.02, 0.04, "Y")
    ga_win_widget_button_center_x_at(wid, press_y_handle, 0.4)

    ga_win_widget_button_start(wid, press_n_handle, 0.6, yn_y, 0.02, 0.04, "N")
    ga_win_widget_button_center_x_at(wid, press_n_handle, 0.6)

    --Go back button.
    local go_back_button_y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Go Back (ESC)"
    ga_win_widget_go_back_button_start(
        wid, go_back_button_y, w, h, go_back_msg);
end

function p.__end(wid)
    --Nothing to do.
end

function p.__process_input(wid)
    local which_button = ga_win_widget_button_process_input(wid)

    if( ga_win_widget_go_back_button_process_input(wid) or
        which_button == press_n_handle or
        ga_win_key_pressed(wid, "N") )
    then
        ga_window_pop()
        return
    end

    if( which_button == press_y_handle or
        ga_win_key_pressed(wid, "Y") )
    then
        ga_window_pop() --Weird.
        ga_window_push("win_base_wp_temp2")
        return
    end
end

function p.__render(wid)
    local red = std.vec(1.0, 0.0, 0.0)
    local black = std.vec(0.0, 0.0, 0.0)

    ga_win_set_background(wid, black, 1.0)

    ga_win_set_front_color(wid, red)
    ga_win_txt_center(wid, 0.7, "YOU ALREADY HAVE A TEMPORARY WAYPOINT.")
    ga_win_txt_center(wid, 0.6, "SELECTING THIS OPTION WILL REPLACE")
    ga_win_txt_center(wid, 0.5, "YOUR TEMP WAYPOINT WITH THIS ONE")

    ga_win_set_front_color_default(wid)
    ga_win_txt_center(wid, 0.32, "CONTINUE?")

    --Part of the yes/no selection.
    ga_win_txt_center(wid, yn_y, "/")
end
