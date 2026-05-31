--File: bent_base_waypoint.lua

function p.__get_can_use(level, bp)
    local dist = ga_block_dist_to_viewer(level, bp)
    if( dist < 1.0 ) then return false end
    return true
end

function p.__get_use_msg(level, bp)
    if( not p.__get_can_use(level, bp) ) then return "" end
    return "Waypoint"
end

function p.__on_use(level, bp)
    ga_play_sound_menu("use")
    --
    --Note: We could also pass the lbp of the wp,
    --but it is not needed by the win_base_wp window.
    local chunk_id = ga_bp_to_parent_chunk_id(level, bp)
    local var = "temp.base_wp.chunk_id"
    ga_create_i(var)
    ga_set_i(var, chunk_id)
    --
    local var = "temp.base_wp.in_only"
    ga_create_b(var)
    ga_set_b(var, false)
    --
    ga_window_push("win_base_wp") --New way.
    -- ga_window_push("__WAYPOINT__") --Old way.
end

--This is commented out, but other packges might want a wp bent/block
--with the ability to remove the wp.  Such a bent/block would use this code
--(using the win_base_wp_remove window).
-- function p.__on_use2(level, bp)
--     local chunk_id = ga_bp_to_parent_chunk_id(level, bp)
--     local var = "temp.meltdown_wp.chunk_id"
--     ga_create_i(var)
--     ga_set_i(var, chunk_id)
--     --
--     local lbp = ga_bp_to_lbp(bp)
--     ga_create_i("temp.meltdown_wp.lbp.x")
--     ga_set_i("temp.meltdown_wp.lbp.x", lbp.x)
--     --
--     ga_create_i("temp.meltdown_wp.lbp.y")
--     ga_set_i("temp.meltdown_wp.lbp.y", lbp.y)
--     --
--     ga_create_i("temp.meltdown_wp.lbp.z")
--     ga_set_i("temp.meltdown_wp.lbp.z", lbp.z)
--     -- 
--     ga_window_push("win_base_wp_remove")
-- end
