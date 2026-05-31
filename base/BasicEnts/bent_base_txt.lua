function p.__get_can_use(level, bp)
    local dist = ga_block_dist_to_viewer(level, bp)
    if( dist < 1.0 ) then return false end
    return true
end

function p.__get_use_msg(level, bp)
    if( not p.__get_can_use(level, bp, dist) ) then return "" end
    return "Read text"
end

function p.__on_use(level, bp)
    ga_play_sound_menu("use")
    local str = ga_bent_get_param_s(level, bp)
    ga_create_s("temp.base.textbox_text")
    ga_set_s("temp.base.textbox_text", str)
    ga_window_push("win_base_txt")
end
