function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "Use to remove"
end

function p.__on_use(level, bp)
    game_sound.play_sound("use")
    game_bent.remove_perm(level, bp)
end
