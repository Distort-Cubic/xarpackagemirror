--To make it easy to mod:
function p.get_char_w() return 0.015 end
function p.get_char_h() return 0.03 end

function p.__start(wid)
    --New way.
    local msg = ga_get_s("temp.base.textbox_text")
    local show_go_back = true
    ga_win_widget_text_box_start(wid, msg, show_go_back)

    local char_w = p.get_char_w()
    local char_h = p.get_char_h()
    ga_win_widget_text_box_set_char_size(wid, char_w, char_h)
    -- ga_win_widget_text_box_set_char_size(wid, 0.015, 0.03) --Default values.

    --Think of a non-annoying way to make the "F" key variable.
    ga_win_widget_text_box_set_go_back_msg(wid, "Go Back (ESC or F)")
end

function p.__end(wid)
    ga_win_widget_text_box_end(wid)
end

function p.__render(wid)
    ga_win_set_background_default(wid)

    --Old way.
    --This is deprecated.
    -- ga_win_set_char_size(wid, 0.015, 0.03)
    -- local msg = ga_get_s("temp.base.textbox_text")
    -- ga_win_txt_box(wid, msg, true)
end

function p.__process_input(wid)
    --The var widget_go_back is true iff the player pressed
    --the escape key or they (left) clicked on the go back button.
    local widget_go_back = ga_win_widget_text_box_process_input(wid)

    -- local esc_pressed = ga_win_key_pressed(wid, "ESC")
    local default_use_key_pressed = ga_win_key_pressed(wid, "F") --Make the "F" variable.
    local left_clicked = ga_win_mouse_pressed(wid, true)
    local right_clicked = ga_win_mouse_pressed(wid, false)
    local one_screen = ga_win_widget_text_box_get_fits_on_one_screen(wid)
    --
    if( widget_go_back or
        default_use_key_pressed or --Could be more general.
        (left_clicked and one_screen) or --A little weird.
        right_clicked )
    then
        ga_window_pop()
        return
    end

    --Copying the text to the clipboard
    --using CTRL + C.
    if( ga_win_key_down("LCTRL") ) then
        if( ga_win_key_pressed(wid, "C") ) then
            ga_play_sound("menu_select")
            local msg = ga_get_s("temp.base.textbox_text")
            local msg_stripped = ga_txt_strip_esc_seq(msg)
            ga_copy_to_clipboard(msg_stripped)
        end
    end
end
