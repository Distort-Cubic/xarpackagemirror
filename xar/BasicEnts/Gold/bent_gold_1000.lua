function p.payload(level, bp)
    bent_gold_1.payload_common(level, bp, 1000)
end

function p.__get_touch_dist()
    return 2.0
end

function p.__on_touch(level, bp)
    p.payload(level, bp)
end

function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "1000 Gold"
end

function p.__on_use(level, bp)
    p.payload(level, bp)
end

function p.on_telekinesis(level, bp)
    p.payload(level, bp)
end
