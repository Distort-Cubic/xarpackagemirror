function p.payload_common(level, bp, amount)
    local once = false
    p.payload_common_helper(level, bp, amount, once)
end

function p.payload_common_helper(level, bp, amount, once)
    local max_value = game_gold.get_max()
    local old_value = game_gold.get()
    local new_value = old_value + amount
    if( new_value > max_value ) then new_value = max_value end
    if ( new_value == old_value ) then return end
    --
    --Actually picking up the entity.
    game_gold.set(new_value)
    --
    local sound = "error"
    if     amount < 100  then sound = "pickup_gold_small"
    elseif amount < 1000 then sound = "pickup_gold_medium"
    else                      sound = "pickup_gold_large"
    end
    game_sound.play_sound(sound)
    --
    if( once ) then
        game_bent.remove_perm(level, bp) --Will not respawn.
    else
        game_bent.remove_temp(level, bp, 60 * 60) --One hour.       
    end
    --
    game_msg.add("You got " .. tostring(new_value - old_value) .. " gold")
end

function p.payload(level, bp)
    bent_gold_1.payload_common(level, bp, 1)
end

function p.__get_touch_dist()
    local dist = ga_get_f("xar.normal_bent_touch_dist")
    return dist
end

function p.__on_touch(level, bp)
    p.payload(level, bp)
end

function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "1 Gold"
end

function p.__on_use(level, bp)
    p.payload(level, bp)
end

function p.on_telekinesis(level, bp)
    p.payload(level, bp)
end
