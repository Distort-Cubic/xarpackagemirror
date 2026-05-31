function p.__get_mesh() return "" end

function p.payload(level, bp)
    local center = std.block_center(bp)
    --
    ga_grow2(center)
    --
    ga_play_sound("grow")
end

function p.__on_touch(level, bp)
    local dist = ga_block_dist_to_viewer(level, bp)
    if (dist > 0.5) then return end

    p.payload(level, bp)
end

function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "Grow"
end

function p.__on_use(level, bp)
    p.payload(level, bp)
end

function p.__on_render(level, bp)
    local cur_time = ga_get_game_time()
    local speed_mod = 1.0
    --
    local angle1 = cur_time * 50.0 * speed_mod
    local axis1 = std.vec(1.0, 0.0, 0.0)
    ga_render_matrix_rotated(angle1, axis1)
    ga_render_mesh("ring_grow_large")
    --
    local angle2 = cur_time * 70.0 * speed_mod
    local axis2 = std.vec(0.0, 1.0, 0.0)
    ga_render_matrix_rotated(angle2, axis2)
    ga_render_mesh("ring_grow_med")
    --
    local angle3 = cur_time * 90.0 * speed_mod
    local axis3 = std.vec(1.0, 0.0, 0.0)
    ga_render_matrix_rotated(angle3, axis3)
    ga_render_mesh("ring_grow_small")
end
