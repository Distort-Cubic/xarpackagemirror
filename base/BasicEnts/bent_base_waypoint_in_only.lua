--File: bent_base_waypoint_in_only.lua

function p.__get_can_use(level, bp)
    local dist = ga_block_dist_to_viewer(level, bp)
    if( dist < 1.0 ) then return false end
    return true
end

function p.__get_use_msg(level, bp)
    if( not p.__get_can_use(level, bp) ) then return "" end
    return "In-Only Waypoint"
end

function p.__on_use(level, bp)
    ga_play_sound_menu("use")
    --
    local chunk_id = ga_bp_to_parent_chunk_id(level, bp)
    local var = "temp.base_wp.chunk_id"
    ga_create_i(var)
    ga_set_i(var, chunk_id)
    --
    local var = "temp.base_wp.in_only"
    ga_create_b(var)
    ga_set_b(var, true)
    --
    ga_window_push("win_base_wp") --New way.
    -- ga_window_push("__WAYPOINT_IN_ONLY__") --Old way.
end
