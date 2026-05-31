--File: game_base_wp_system_aux.lua

--These are common functions that a package might want to override in order to
--change the way the waypoint system works.

--Should NOT end in a period.
function p.get_wp_dyn_var_prefix()
    return "dyn.base.waypoint"
end

--This searches for waypoints you can travel TO (once they are enabled).
--Will return a table with the bool member "is_valid".
--If that bool is true, the table will also have the member
--"value" which is a local block position.
--Note: Moving forward, I think blocks should generally be used
--instead of bents (basic entities).
function p.search_for_target_wp_in_chunk(chunk_id)
    -- local bts = {}
    -- bts[#bts + 1] = "block_wp"
    -- bts[#bts + 1] = "block_wp_in_only"
    local bents = {}
    bents[#bents + 1] = "bent_base_waypoint"
    bents[#bents + 1] = "bent_base_waypoint_in_only"
    --
    local ret = {}
    ret.is_valid = false
    for _,v in ipairs(bents) do
        local bent = v
        local search_results = ga_search_for_bent_in_chunk(chunk_id, bent)
        -- local search_results = ga_search_for_bt_in_chunk(chunk_id, bt)
        if( search_results.is_valid ) then
            ret.is_valid = true
            ret.value = search_results.value
            return ret
        end
    end
    return ret
end

--Getting the name of a wp, given its position in the world.
function p.get_name_of_wp(level, bp)
    return ga_bent_get_param_s(level, bp)
    -- return ga_block_get_s(level, bp, "name")
end

--This is needed in a game with gravity where we can create and destroy blocks.
--This function should clear blocks around the target wp to make room for the player.
function p.clear_area_around_target_wp(level, bp)
    --Really, we should be more careful.
    --We should see if we cannot change the block type
    --(because a chunk is not loaded) and then we should wait.
    -- local bp1 = std.bp_add(bp, std.bp(0,0,1))
    -- local bp2 = std.bp_add(bp, std.bp(0,0,2))
    -- ga_block_change_perm(level, bp1, "block_e")
    -- ga_block_change_perm(level, bp2, "block_e")
end

--This should be called when we have teleported the player to the chunk with the target wp,
--but we need to move the player's body in relation to the lbp of the target wp.
function p.tele_same_level_next_to_wp(target_wp_bp)
    --Moving the "eye" of the player.
    local eye_bp = target_wp_bp --For a xar like package.
    -- local eye_bp = std.bp_add(target_wp_bp, std.bp(0,0,2)) --For a package with gravity.
    local eye_lp = std.block_center(eye_bp)
    ga_tele_same_level(eye_lp)
end

--This is intended to add a message to the screen.
function p.add_msg(str)
    --In the base package, there are no messages posted to the screen.
    -- game_msg.add(str)
end

--This is returns whether full_name matches the "pattern".
--The idea is that we check each full waypoint name with the pattern
--which is the search string of the waypoint menu.
--You can customize how this works.
function p.matches_fancy(full_name, search_pattern)
    --Please do not call base_local_XXX scripts from outside the base package,
    --because those local scripts are subject to change later.
    return base_local_str.matches_fancy(full_name, search_pattern)
    -- return game_str.matches_fancy(full_name, search_pattern)
end

--This should be moved to "game_base_str.lua",
--because it is a general function.
function p.path_str_to_level(path)
    return base_local_str.path_str_to_level(path)
end

function p.ago_str(game_time, last_used_time)
    return base_local_str.ago_str(game_time, last_used_time)
end
