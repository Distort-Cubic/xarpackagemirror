local press_y_handle = 1
local press_n_handle = 2

function p.refresh_buttons(wid)
    if p.at_current_respawn_point() then
        --Hiding the Y/N buttons.
        ga_win_widget_button_end(wid, press_y_handle)
        ga_win_widget_button_end(wid, press_n_handle)
    else
        --Showing Y/N buttons.
        ga_win_widget_button_start(wid, press_y_handle, 0.0, 0.5, 0.02, 0.04, "Y")
        ga_win_widget_button_center_x_at(wid, press_y_handle, 0.4)

        ga_win_widget_button_start(wid, press_n_handle, 0.0, 0.5, 0.02, 0.04, "N")
        ga_win_widget_button_center_x_at(wid, press_n_handle, 0.6)
    end
end

function p.__start(wid)
    p.refresh_buttons(wid)

    local go_back_button_y = 0.06
    local w = 0.02
    local h = 0.04
    local go_back_msg = "Go Back (ESC or F)"
    ga_win_widget_go_back_button_start(
        wid, go_back_button_y, w, h, go_back_msg);
end

--We assume that the respawn point bent
--is the current "bent" look object.
--We do do not want to make this assumption,
--we need to rewrite this script so it it passed
--the chunk_id of the respawn point in question.
function p.get_use_object_chunk_id()
    local exists = ga_look_object_bent_exists()
    if( not exists ) then return -1 end
    return ga_look_object_bent_get_chunk_id()
end

function p.at_current_respawn_point()
    local chunk_id = p.get_use_object_chunk_id()
    if( chunk_id < 0 ) then return false end --Uh oh!
    local current_path = ga_chunk_id_to_path(chunk_id)
    --
    local respawn_path = ga_get_respawn_path()
    --
    return (current_path == respawn_path)
end

function p.set_as_current_respawn_point()
    local exists = ga_look_object_bent_exists()
    if( not exists ) then
        ga_play_sound("error")
        return --Uh oh!
    end
    local chunk_id = ga_look_object_bent_get_chunk_id()
    local path = ga_chunk_id_to_path(chunk_id)
    local lbp = ga_look_object_bent_get_lbp()
    --
    ga_set_respawn_point(path, lbp)
end

function p.__render(wid)
    ga_win_set_background(wid, std.vec(0.0, 0.0, 0.0), 1.0)

    ga_win_set_char_size(wid, 0.015, 0.03)

    if p.at_current_respawn_point() then
        local txt =
               "^x00ff00This is your current respawn point!^!\n\n"
            .. "To change your current respawn point, "
            .. "go to another respawn point and activate it. "
        local show_go_back_msg = false
        ga_win_txt_box(wid, txt, show_go_back_msg)
    else
        local min_y = 0.65
        local txt = "Would you like to set this as your current respawn point?"
        ga_win_txt_center(wid, min_y, txt)
        --
        ga_win_set_char_size(wid, 0.02, 0.04)
        ga_win_txt_center(wid, 0.5, "/")
    end
end

function p.__process_input(wid)
    p.refresh_buttons(wid)

    local which_button = ga_win_widget_button_process_input(wid)

    if( ga_win_widget_go_back_button_process_input(wid) or
        which_button == press_n_handle or
        ga_win_key_pressed(wid, "ESC") or
        ga_win_key_pressed(wid, "F") or
        ga_win_key_pressed(wid, "N") )
    then
        ga_play_sound("menu_back")
        ga_window_pop()
    end

    if( which_button == press_y_handle or
        ga_win_key_pressed(wid, "Y") ) then
        p.set_as_current_respawn_point()
        ga_play_sound("menu_select")
        ga_window_pop()
    end
end
