function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "Upgrade Station"
end

function p.__on_use(level, bp)
    game_sound.play_sound_menu("use")
    ga_window_push("win_upgrade_station")
end
