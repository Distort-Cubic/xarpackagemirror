function p.__get_can_use(level, bp)
    return true
end

function p.__get_use_msg(level, bp)
    return "Out-Only Waypoint"
end

function p.__on_use(level, bp)
    local v1 = ga_get_viewer_lp(level)
    local v2 = std.block_center(bp)
    ga_env_rect_line_trigger(level, v1, v2) --The end of an era.
    --
    ga_play_sound_menu("use")
    local chunk_id = ga_bp_to_parent_chunk_id(level, bp)
    local var = "temp.base_wp.chunk_id"
    ga_create_i(var)
    ga_set_i(var, chunk_id)
    --
    ga_window_push("win_base_wp_out_only") --New way.
    -- ga_window_push("__WAYPOINT_OUT_ONLY__") --Old way.
end
