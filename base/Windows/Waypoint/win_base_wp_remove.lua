--File: win_base_wp_remove.lua

local press_y_handle = 1
local press_n_handle = 2

local yn_y = 0.4

-------------------------------------------------------------------------------
-- Window functions
-------------------------------------------------------------------------------

function p.__start(wid)
    local red = std.vec(1.0, 0.0, 0.0)

    ga_win_widget_button_start(wid, press_y_handle, 0.4, yn_y, 0.02, 0.04, "Y")
    ga_win_widget_button_center_x_at(wid, press_y_handle, 0.4)
    ga_win_widget_button_set_color(wid, press_y_handle, red)

    ga_win_widget_button_start(wid, press_n_handle, 0.6, yn_y, 0.02, 0.04, "N")
    ga_win_widget_button_center_x_at(wid, press_n_handle, 0.6)
    ga_win_widget_button_set_color(wid, press_n_handle, red)

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
    local which_button = ga_win_widget_button_process_input(wid)

    if( which_button == press_y_handle or
        ga_win_key_pressed(wid, "Y") )
    then
        p.payload() --Actually removing the block.
        ga_window_pop()
    end

    if( ga_win_widget_go_back_button_process_input(wid) or
        which_button == press_n_handle or
        ga_win_key_pressed(wid, "N") )
    then
        ga_window_pop()
    end
end

function p.__render(wid)
    local black = std.vec(0.0, 0.0, 0.0)
    ga_win_set_background(wid, black, 1.0)

    ga_win_set_front_color(wid, std.vec(1.0, 0.0, 0.0)) --Red.
    ga_win_set_char_size(wid, 0.02, 0.04)
    ga_win_txt_center(wid, 0.6, "ARE YOU SURE YOU WANT TO REMOVE THIS WAYPOINT?")

    ga_win_txt_center(wid, yn_y, "/")
end

function p.payload()
    local var = "temp.meltdown_wp.chunk_id"
    local chunk_id = ga_get_i(var)
    local level = ga_chunk_id_to_level(chunk_id)
    local lbp = std.bp(-1,-1,-1)
    lbp.x = ga_get_i("temp.meltdown_wp.lbp.x")
    lbp.y = ga_get_i("temp.meltdown_wp.lbp.y")
    lbp.z = ga_get_i("temp.meltdown_wp.lbp.z")
    local bp = ga_chunk_id_and_lbp_to_bp(chunk_id, lbp)
    --
    if( ga_block_var_exists(level, bp, "name") ) then
        local name = ga_block_get_s(level, bp, "name")
        if( name == "EMERGENCY" ) then
            game_msg.add("You cannot remove your emergency waypoint")
            ga_play_sound("error")
            return
        end
    end
    --
    local bp = ga_chunk_id_and_lbp_to_bp(chunk_id, lbp)
    ga_block_change_perm(level, bp, "block_e")
    ga_play_sound_menu("pickup_gap") --Might want to change.
end
