--File: game_create_start_pos.lua

--This script is responsible for initially placing the player
--in the world when they do a new game.
--It basically works by starting the player at the root,
--and every block type has a "child block type" that we drop down to.

--To do: rewrite this file to use the
--ga_search_for_bt_in_chunk and
--ga_search_for_bt_in_chunk_random functions more.

--To do: Continue to clean up this file.

function p.main()
    local state = ga_get_s("xar.create_start_pos.state")
    if( state == "not_started" ) then
        p.init()
        return
    end
    if( state == "in_progress" ) then
        p.main2()
        return
    end
end

function p.splash(str)
    ga_set_s("xar.create_start_pos.splash", str)
    --ga_print("splashing: " .. str)
end

function p.init()
    local package_seed = ga_get_sys_i("game.package.seed")
    --
    local which_try = ga_get_i("xar.create_start_pos.which_try")
    ga_set_i("xar.create_start_pos.which_try", which_try+1)
    ga_set_i("xar.create_start_pos.next_seed", package_seed + which_try) --Good enough?
    --
    ga_set_f("xar.create_start_pos.frac", 0.0)
    ga_hud_window_add("win_create_start_pos", 2000)
    ga_set_s("xar.create_start_pos.state", "in_progress")
    ga_set_i("xar.create_start_pos.cur_level", 0)
    --
    local tries_max = ga_get_i("xar.create_start_pos.global_tries_max")
    ga_set_i("xar.create_start_pos.global_tries", tries_max)
    --
    ga_move_set_body_spirit()
    ga_tele("EMPTY_PATH", std.vec(2.0, 2.0, 2.0))
end

--It would be good to have a more general
--random seed "stream" or "channel".
function p.random_pos(min_x, min_y, min_z, max_x, max_y, max_z)
    local seed = ga_get_i("xar.create_start_pos.next_seed")
    ga_srand(seed)
    --
    local x = ga_randi(min_x, max_x)
    local y = ga_randi(min_y, max_y)
    local z = ga_randi(min_z, max_z)
    local pos = std.bp(x,y,z)
    --
    local next_seed = ga_rand()
    -- ga_print("xar.create_start_pos.random_pos: next_seed = " .. tostring(next_seed))
    ga_set_i("xar.create_start_pos.next_seed", next_seed)
    --
    return pos
end

--This is for the new algorithm.
--This is to be applied in the chunk of the player.
function p.advance_to_pos(x,y,z, goal_bt)
    local level = ga_get_viewer_level()
    -- local chunk_id = ga_get_viewer_chunk_id()
    local pos = std.bp(x,y,z)
    local actual_bt = ga_block_get(level, pos)
    if goal_bt ~= actual_bt then
        local chunk_bt = ga_get_viewer_chunk_bt()
        ga_print("In game_create_start.lua: advance_to_pos:")
        ga_print("We are currently in chunk " .. chunk_bt)
        ga_print("trying to descend to position " .. std.vec_to_str(x,y,z))
        ga_print("However this position has block type " .. actual_bt)
        ga_print("instead of the requested block type " .. goal_bt)
        ga_exit()
    end
    ga_shrink2(std.block_center(pos))
    ga_set_i("xar.create_start_pos.cur_level", level+1)
end

--This is for the new algorithm.
--This is to be applied in the chunk of the player.
--It just tries a single position at random.
function p.advance_to_random_pos_maybe(goal_bt)
    local pos = p.random_pos(0,0,0, 15,15,15)
    local level = ga_get_viewer_level()
    local actual_bt = ga_block_get(level, pos)
    if goal_bt ~= actual_bt then return false end
    ga_shrink2(std.block_center(pos))
    ga_set_i("xar.create_start_pos.cur_level", level+1)
    return true
end

--This tries every local block position but in a random order.
function p.advance_to_random_pos_search_maybe(seed, goal_bt)
    local chunk_id = ga_get_viewer_chunk_id()
    local data = ga_search_for_bt_in_chunk_random(seed, chunk_id, goal_bt)
    if( data.is_valid ) then
        local pos = data.value
        ga_shrink2(std.block_center(pos))
        local level = ga_get_viewer_level()
        ga_set_i("xar.create_start_pos.cur_level", level+1)
        return true
    else
        return false
    end
end

--This tries every local block position but in the usual order.
function p.advance_to_search_maybe(goal_bt)
    local chunk_id = ga_get_viewer_chunk_id()
    local data = ga_search_for_bt_in_chunk(chunk_id, goal_bt)
    if( data.is_valid ) then
        local pos = data.value
        ga_shrink2(std.block_center(pos))
        local level = ga_get_viewer_level()
        ga_set_i("xar.create_start_pos.cur_level", level+1)
        return true
    else
        return false
    end
end

--This tries every local block position but in the usual order.
function p.advance_to_search(goal_bt)
    local worked = p.advance_to_search_maybe(goal_bt)
    if not worked then
        local chunk_bt = ga_get_viewer_chunk_bt()
        ga_print("In game_create_start.lua: advance_to_search_maybe: ")
        ga_print("No block of type " .. goal_bt .. " found in chunk of type " .. chunk_bt)
        local chunk_id = ga_get_viewer_chunk_id()
        ga_dump_chunk(chunk_id)
        ga_exit()
    end
end

--Goes to any block (chosen at random)
--in the player's chunk with the given block type.
function p.advance_to_random_with_bt(seed, goal_bt)
    local chunk_id = ga_get_viewer_chunk_id()
    local data = ga_search_for_bt_in_chunk_random(seed, chunk_id, goal_bt)
    if( data.is_valid ) then
        local pos = data.value
        ga_shrink2(std.block_center(pos))
        local level = ga_get_viewer_level()
        ga_set_i("xar.create_start_pos.cur_level", level+1)
    else
        local chunk_bt = ga_get_viewer_chunk_bt()
        ga_print("In game_create_start.lua: advance_to_random_with_bt:")
        ga_print("We are currently in chunk " .. chunk_bt)
        ga_print("trying to descend to position with block type " .. goal_bt)
        ga_print("However no such position can be found")
        ga_exit()
    end
end

function p.pop(n)
    local level = ga_get_viewer_level()
    ga_set_i("xar.create_start_pos.cur_level", level-n)

    --So we do not get caught in an infinite loop.
    ga_set_b("xar.create_start_pos.fast_track", false)
end

function p.main2()
    --Ticking down.
    local tries = ga_get_i("xar.create_start_pos.global_tries")
    ga_set_i("xar.create_start_pos.global_tries", tries-1)

    --Advancing the seed.
    local seed = ga_get_i("xar.create_start_pos.next_seed")
    ga_srand(seed)
    local next_seed = ga_rand()
    ga_set_i("xar.create_start_pos.next_seed", next_seed)

    --When fast_track is true, we attempt to look for a
    --SPACE_SOLAR_SYSTEM_START in a galaxy instead of a
    --SPACE_SOLAR_SYSTEM.  The former is better, but we do not
    --want to mess up anybody's save file (a single SPACE_SOLAR_SYSTEM_START
    --block was added to each galaxy chunk in update "1.01.23".
    local fast_track = ga_get_b("xar.create_start_pos.fast_track")

    if tries < 0 then
        ga_hud_window_remove("win_create_start_pos")
        p.init()
        return
    end

    local viewer_level = ga_get_viewer_level()
    local crawl_level = ga_get_i("xar.create_start_pos.cur_level")
    --
    ga_set_f("xar.create_start_pos.frac", viewer_level / 30.0)
    --
    local cur_bt = ga_get_cocoon_block_of_chunk(
        viewer_level, std.bp(0,0,0))
    p.splash(cur_bt)

    --
    if( viewer_level > crawl_level ) then
        ga_grow()
        return
    end
    if( viewer_level ~= crawl_level ) then
        --splash("WAITING TO SHRINK")
        return
    end
    local level = viewer_level

    local chunk_id = ga_get_viewer_chunk_id()
    local chunk_bt = ga_get_viewer_chunk_bt()
    ga_print("game_create_start_pos: level=" .. tostring(level) .. " bt=" .. chunk_bt)

    --
    if( chunk_bt == "XAR_ROOT" ) then                               --Level 0.
        p.advance_to_pos(7,7,7, "XAR_SPACE_ROOT")
        return
    elseif( chunk_bt == "XAR_SPACE_ROOT" ) then                     --Level 1.
        p.advance_to_pos(7,7,7, "XAR_SPACE_TOP_NEG_2")
        return
    elseif( chunk_bt == "XAR_SPACE_TOP_NEG_2" ) then                --Level 2.
        p.advance_to_pos(7,7,7, "XAR_SPACE_TOP_NEG_1")
        return
    elseif( chunk_bt == "XAR_SPACE_TOP_NEG_1" ) then                --Level 3.
        --Pick a random position surrounding (7,7,7).
        --The block at (7,7,7) is SPACE_TOP_0.
        --We want to spawn close to Mylantis.
        local pos = p.random_pos(6,6,6, 8,8,8)
        local bt = ga_block_get(level, pos);
        if( bt == "XAR_SPACE_TOP_0_B" ) then
            p.advance_to_pos(pos.x, pos.y, pos.z, "XAR_SPACE_TOP_0_B")
        end
        return
    elseif( chunk_bt == "XAR_SPACE_TOP_0_B" ) then                  --Level 4.
        p.advance_to_random_with_bt(seed, "XAR_SPACE_TOP_1")
        return
    elseif( chunk_bt == "XAR_SPACE_TOP_1" ) then                    --Level 5.
        if not p.advance_to_random_pos_maybe("XAR_SPACE_TOP_2") then p.pop(1) end
    elseif( chunk_bt == "XAR_SPACE_TOP_2" ) then                    --Level 6.
        if not p.advance_to_random_pos_maybe("XAR_SPACE_MID") then p.pop(1) end
    elseif( chunk_bt == "XAR_SPACE_MID" ) then
        if not p.advance_to_random_pos_search_maybe(seed, "XAR_SPACE_MID_FILAMENT_1") then p.pop(1) end
    elseif( chunk_bt == "XAR_SPACE_MID_FILAMENT_1" ) then           --Level 8.
        if not p.advance_to_random_pos_search_maybe(seed, "XAR_SPACE_GALAXY") then p.pop(2) end
    elseif( chunk_bt == "XAR_SPACE_GALAXY" ) then
        if( fast_track and p.advance_to_search_maybe("XAR_SPACE_SOLAR_SYSTEM_START") ) then return end
        --This is important: we must do a (pseudo) RANDOM search in the next line
        --because otherwise can be get stuck in an infinite loop
        --(we keep popping to this point).
        p.advance_to_random_pos_search_maybe(seed, "XAR_SPACE_SOLAR_SYSTEM") --Will exit if fails.
    elseif( chunk_bt == "XAR_SPACE_SOLAR_SYSTEM_START" or
            chunk_bt == "XAR_SPACE_SOLAR_SYSTEM" )                  --Level 10.
    then
        if( fast_track and p.advance_to_search_maybe("XAR_SPACE_PLANET_AREA_START") ) then return end --Better.
        if p.advance_to_search_maybe("XAR_SPACE_PLANET_AREA") then return end      --Worse.
        p.pop(1)
    elseif( chunk_bt == "XAR_SPACE_PLANET_AREA_START" or
            chunk_bt == "XAR_SPACE_PLANET_AREA" )                   --Level 11.
    then
        if p.advance_to_search_maybe("XAR_TAU_CAVE_MOON_AREA_START") then return end
        -- ga_print("NOT fast tracking it")
        if p.advance_to_search_maybe("XAR_TAU_CAVE_MOON_AREA") then return end
        p.pop(2) --Popping twice to the galaxy.
    elseif( chunk_bt == "XAR_TAU_CAVE_MOON_AREA_START" or           --Level 12.
            chunk_bt == "XAR_TAU_CAVE_MOON_AREA" ) then             --Level 12.
        if p.advance_to_search_maybe("XAR_TAU_CAVE_MOON") then return end
        p.pop(3) --Popping three times into to the galaxy.
    elseif( chunk_bt == "XAR_TAU_CAVE_MOON" ) then --Level 13.
        p.advance_to_search_maybe("XAR_TAU_CAVE_LAYER_2_CAVE_START") --Will exit if fails.
    elseif( chunk_bt == "XAR_TAU_CAVE_LAYER_2_CAVE_START" ) then    --Level 14.
        if p.advance_to_search_maybe("XAR_TAU_CAVE_LAYER_3_CAVE_START") then return end
        p.pop(5) --Popping give times to the galaxy.
    elseif( chunk_bt == "XAR_TAU_CAVE_LAYER_3_CAVE_START" ) then    --Level 15.
        if p.advance_to_random_pos_search_maybe(seed, "XAR_TAU_CAVE_LAYER_1_MOLD_START") then return end
        p.pop(6) --Popping give times to the galaxy.
    elseif( chunk_bt == "XAR_TAU_CAVE_LAYER_1_MOLD_START" ) then    --Level 16.
        if p.advance_to_search_maybe("XAR_YING_FLOWER") then return end
        p.pop(7)--Popping seven times times to the galaxy.
    elseif( chunk_bt == "XAR_YING_FLOWER" ) then --Level 17
        p.advance_to_pos(8,8,7, "XAR_YW_SHELL_ROOM")
    elseif( chunk_bt == "XAR_YW_SHELL_ROOM" ) then          --Level 18.
        p.advance_to_pos(7,11,2, "XAR_YW_SHELL_3")
    elseif( chunk_bt == "XAR_YW_SHELL_3" ) then             --Level 19.
        p.advance_to_pos(7,7,7, "XAR_YW_SHELL_2")
    elseif( chunk_bt == "XAR_YW_SHELL_2" ) then             --Level 20.
        p.advance_to_pos(7,7,7, "XAR_YW_SHELL_1")
    elseif( chunk_bt == "XAR_YW_SHELL_1" ) then             --Level 21.
        p.advance_to_pos(7,7,7, "XAR_YW_2")
    elseif( chunk_bt == "XAR_YW_2" ) then                   --Level 22.
        p.advance_to_pos(8,8,8, "XAR_YW_1_BLUE")
    elseif( chunk_bt == "XAR_YW_1_BLUE" ) then              --Level 23.
        p.advance_to_pos(8,8,8, "XAR_YW_0_BLUE")
    elseif( chunk_bt == "XAR_YW_0_BLUE" ) then              --Level 24.
        p.advance_to_pos(7,6,9, "XAR_YW_CHAMBERS")
    elseif( chunk_bt == "XAR_YW_CHAMBERS" ) then            --Level 25.
        p.advance_to_pos(4,12,9, "XAR_YW_TUTORIAL")
    elseif( chunk_bt == "XAR_YW_TUTORIAL" ) then            --Level 26.
        p.advance_to_pos(8,8,4, "XAR_TUTORIAL")
    elseif( chunk_bt == "XAR_TUTORIAL" ) then               --Level 27.
        -- p.modify_em_wp_rooms(chunk_id) --Bizzare. (I found another way).
        p.advance_to_pos(7,7,7, "XAR_TUTORIAL_HAPPY_LAND")
    elseif( chunk_bt == "XAR_TUTORIAL_HAPPY_LAND" ) then    --Level 28.
        p.advance_to_pos(2,2,2, "XAR_HAPPY_LAND")
    elseif( chunk_bt == "XAR_HAPPY_LAND" ) then             --Level 29.
        p.advance_to_pos(7,7,12, "XAR_HAPPY_LAND_HUB")
    elseif( chunk_bt == "XAR_HAPPY_LAND_HUB" ) then         --Level 30.
        p.advance_to_pos(1,2,10, "XAR_HAPPY_LAND_START_ROOM")
    elseif( chunk_bt == "XAR_HAPPY_LAND_START_ROOM" ) then
        --In the correct starting room!
        p.finish()
    end
end

--Modifying the emergency waypoint room block
--and the block above it.
--The argument to this function is the chunk_id
--of the XAR_TUTORIAL block.
--This might seem bizzare, but it is the price we
--pay for having secret toll doors (with holes in them)
--blocking the duplicate emergency waypoint rooms.
-- function p.modify_em_wp_rooms(chunk_id)
--     local level = ga_chunk_id_to_level(chunk_id)
--     --
--     local bp1 = ga_chunk_id_and_lbp_to_bp(chunk_id, std.bp(11,7,6))
--     local bt1_found = ga_bp_to_bt(level, bp1)
--     local bt1_expected = "XAR_TUTORIAL_WP_PRE"
--     --
--     local bp2 = ga_chunk_id_and_lbp_to_bp(chunk_id, std.bp(11,7,7))
--     local bt2_found = ga_bp_to_bt(level, bp2)
--     local bt2_expected = "XAR_TUTORIAL_WP_ABOVE_PRE"
--     --
--     --Making sure are assumptions are correct.
--     if( bt1_found ~= bt1_expected or
--         bt2_found ~= bt2_expected )
--     then
--         ga_print("*** Error: bug in game_create_start_pos.lua: emergency wp block type problem")
--         ga_print("           bt1_found = " .. bt1_found)
--         ga_print("           bt2_found = " .. bt2_found)
--         ga_exit_with_error()
--     end
--     --
--     --Changing blocks in the world (permanently).
--     ga_block_change_perm(level, bp1, "XAR_TUTORIAL_WP")
--     ga_block_change_perm(level, bp2, "XAR_TUTORIAL_WP_ABOVE")
-- end

function p.finish()
    ga_set_s("xar.create_start_pos.state", "done")
    --
    --Important if the game is rebooted:
    ga_set_i("xar.create_start_pos.which_try", 0)
    --
    ga_hud_window_remove("win_create_start_pos")
    --
    --Setting camera mode.
    game_body.set_default_fly_mode()
    --
    ga_tele_same_level(std.vec(7.5, 2.0, 8.0))
    --
    --The emergency waypoint is always in the
    --same position relative to the starting chunk.
    local viewer_chunk = ga_get_viewer_chunk_id()
    local path1 = ga_chunk_id_to_path(viewer_chunk)
    local path2 = path1:sub(1, -17) --Magic.
    local path3 = path2 .. "_b76" --Magic.
    -- ga_add_waypoint_sloppy(path3, "EMERGENCY") --Old way.
    game_base_wp_system.add_emergency_wp(path3)
    ga_set_s("xar.world_pos.emergency_waypoint.path", path3)
    --
    ga_set_respawn_point(path1, std.bp(7,7,7))
    --
    p.finish_helper()
    --
    ga_play_sound("enter_game")
end

--This is used for the non "classic" or "genesis" game configurations.
function p.dummy_finish()
    p.finish_helper()
end

--Helper function.
--Do not call this from the outside.
function p.finish_helper()
    --Recording that we were successful.
    local reboot_count = ga_get_sys_i("game.player.reboot_count")
    ga_set_i("xar.create_start_pos.which_reboot_cleared", reboot_count)
end

--This should be called in the top.__update function.
--If this returns false, then the player was not placed
--correctly in their starting position.
--A popup will be displayed that cannot be closed
--telling the player to reboot the game.
function p.check_start_pos_succeeded()
    local first_version_int = game_version.get_first_engine_version_int()
    if( first_version_int < 10130 ) then
        --The saved game engine version is (strictly) before 1.01.30,
        --so we grandfather it.
        return true
    end
    --
    if p.found_starting_pos() then
        return true --We are good.
    end
    --
    --Something is wrong!
    local priority = 2000 --So is rendered last.
    ga_hud_window_add("win_start_pos_failed", priority)
    --
    --Note: If we wanted, we could use an "explore while loop"
    --to really lock the player out of the game.
    --
    return false
end

--Similar to check_start_pos_succeeded,
--but it just returns a bool and has no side effects.
function p.found_starting_pos()
    local first_version_int = game_version.get_first_engine_version_int()
    if( first_version_int < 10130 ) then
        --The saved game engine version is (strictly) before 1.01.30,
        --so we grandfather it.
        return true
    end
    --
    local reboot_count = ga_get_sys_i("game.player.reboot_count")
    local cleared_count = ga_get_i("xar.create_start_pos.which_reboot_cleared")
    return ( reboot_count == cleared_count )    
end
