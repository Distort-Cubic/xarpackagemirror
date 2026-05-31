function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "Save Game"
end

function p.__on_use(level, bp)
    local play_sound = true
    ga_save(play_sound)
end
