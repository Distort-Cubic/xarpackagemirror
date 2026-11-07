function p.__get_mesh() return "bent_gold_20" end
function p.__get_mesh2() return "gun_ammo_once" end

function p.payload(level, bp)
    bent_gold_once_1.payload_common(level, bp, 20)
end

function p.__get_touch_dist()
    local dist = ga_get_f("xar.normal_bent_touch_dist")
    return dist
end

function p.__on_touch(level, bp)
    p.payload(level, bp)
end

function p.__get_use_msg(level, bp)
    return "20 Gold (does not respawn)"
end

function p.__on_use(level, bp)
    p.payload(level, bp)
end

function p.on_telekinesis(level, bp)
    p.payload(level, bp)
end
