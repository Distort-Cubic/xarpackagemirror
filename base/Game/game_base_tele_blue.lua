--File: game_base_tele_blue.lua

--The purpose of this script is to softcode "blue rings" and "blue teleportation".
--This requires 2 improvements to the engine:
-- 1) We should add "dynamic" block variables, so that we we do not have to register
--    the (normal block) variable "base_blue_tele_type" to every block.
--    These variables can be added or removed from any block during normal gameplay,
--    although all we need for blue teleportation is for these to be added
--    during chunk generation.
-- 2) The Lua game code already has a way to move the player deeper into the world.
--    That is, see how the file Game/game_create_start_pos.lua of the xar package
--    does this.  Basically, we put the player's body into "spirit" mode,
--    and every frame we move the player to a new child chunk.
--    What we should add is a way to easily recover the player's body mode
--    after turing spirit mode off.  Something like the following: a function
--    ga_move_set_body_spirit_off, which sets the player's body mode to whatever
--    it was before turning spirit mode on.
--Note that this new blue teleportation system might not be as fast as the
--built in one, because we can only go down one chunk per frame.

-------------------------------------------------------------------------------
--              Variables names that must by synced with other files
-------------------------------------------------------------------------------

--Dynamic block variable names.
--These must by synced with worldgen code which
--"sets the blue type and blue pos" of a chunk
--during chunk generation.
--That is, it must sync with the file "base/Worldnodes/Helpers/base_blue_tele.lua".
local dyn_block_var_blue_type  = "dyn_base_blue_tele_type"
local dyn_block_var_blue_pos_x = "dyn_base_blue_tele_pos_x"
local dyn_block_var_blue_pos_y = "dyn_base_blue_tele_pos_y"
local dyn_block_var_blue_pos_z = "dyn_base_blue_tele_pos_z"

--Must sync with "win_base_tele_blue.lua".
local var_always_render = "dyn.base.blue_tele_always_render"

-------------------------------------------------------------------------------
--                       Local constants and variables
-------------------------------------------------------------------------------
--Do not use from outside this script.

--The name of this script.
local this_mod = "game_base_tele_blue"

--Access the var_stage via helper functions.
local var_stage            = "dyn.base.blue_tele_stage"
local var_start_chunk_id   = "dyn.base.blue_tele_start_chunk_id"
local var_num_iterations   = "dyn.base.blue_tele_num_iterations"
local var_render_countdown = "dyn.base.blue_tele_render_countdown"

--Do NOT call from outside this script.
--Called just before blue teleportation.
function p.init_dyn_vars(start_chunk_id)
    ga_dyn_create_i(var_stage)
    ga_dyn_create_i(var_start_chunk_id)
    ga_dyn_create_i(var_num_iterations)
    ga_dyn_create_i(var_render_countdown)
    ga_dyn_create_b(var_always_render)
    --
    ga_dyn_set_i(var_stage, 0)
    ga_dyn_set_i(var_start_chunk_id, start_chunk_id)
    ga_dyn_set_i(var_num_iterations, 0)
    ga_dyn_set_i(var_render_countdown, 0)
    ga_dyn_set_b(var_always_render, false)
end

--Do NOT call from outside this script.
--Called just after blue teleportation.
function p.remove_dyn_vars()
    ga_dyn_remove(var_stage)
    ga_dyn_remove(var_start_chunk_id)
    ga_dyn_remove(var_num_iterations)
    ga_dyn_remove(var_render_countdown)
end

-------------------------------------------------------------------------------
--                          Blue teleportation API
-------------------------------------------------------------------------------
--This is the only part of this script which can be called from the outside.

--Starts blue teleporting the player
--from the given chunk.
function p.start_tele(chunk_id)
    ga_print(this_mod .. ".start_tele")
    p.init_dyn_vars(chunk_id)
    p.set_blue_tele_progress_stage(1)

    local callback_name = this_mod .. ".update"
    local win_name = "win_base_tele_blue"
    ga_explore_while(callback_name, win_name)
end

--This can be called from the outside.
--This will return either "up", "down", or "terminal".
function p.get_chunk_blue_type(chunk_id)
    -- return p.get_chunk_blue_type_old_version(chunk_id) --Deprecated.
    return p.get_chunk_blue_type_new_version(chunk_id)
end

--Returns the "blue pos" local block position of the chunk.
function p.get_chunk_blue_pos(chunk_id)
    -- return p.get_chunk_blue_pos_old_version(chunk_id) --Deprecated.
    return p.get_chunk_blue_pos_new_version(chunk_id)
end

--This is currently being used by the new (Lua) pathpink command of xar.
--This can be called from the outside.
--Returns -1 if the dest chunk does not exist.
--We go up until we find a "blue down" chunk.
function p.get_blue_dest_top_chunk_id(source_chunk_id)
    local cur_chunk_id = source_chunk_id
    while( cur_chunk_id >= 0 ) do
        local blue_type = p.get_chunk_blue_type(cur_chunk_id)

        if( blue_type == "down" or
            blue_type == "terminal" )
        then
            return cur_chunk_id
        end
        cur_chunk_id = ga_chunk_id_to_parent_chunk_id(cur_chunk_id)
    end
    return -1
end

function p.get_blue_dest_top_level(source_chunk_id)
    local dest_chunk_id = p.get_blue_dest_top_chunk_id(source_chunk_id)
    return ga_chunk_id_to_level(dest_chunk_id)
end

-------------------------------------------------------------------------------
--                         Old blue teleportation helpers
-------------------------------------------------------------------------------

--Getting the blue type of the chunk, using the "old system".
-- function p.get_chunk_blue_type_old_version(chunk_id)
--     return ga_get_blue_type(chunk_id) --Deprecated.
-- end

-- function p.get_chunk_blue_pos_old_version(chunk_id)
--     return ga_get_blue_pos(chunk_id) --Deprecated.
-- end

-------------------------------------------------------------------------------
--                        New blue teleportation helpers 1
-------------------------------------------------------------------------------
--These should NOT be called from outside this script.

function p.get_chunk_blue_type_new_version(chunk_id)
    local level = ga_chunk_id_to_level(chunk_id)

    local var = dyn_block_var_blue_type
    local vcp = ga_chunk_id_to_vcp(chunk_id)

    local var_exists = ga_chunk_dyn_var_exists(level, vcp, var)
    
    if( not var_exists ) then
        --Chunks are of "blue type up" by default.
        return "up"
    end
    local blue_type = ga_chunk_dyn_get_s(level, vcp, var)

    if( blue_type == "down" or
        blue_type == "terminal" )
    then
        return blue_type
    end
    ga_print("*** Error: bad \"blue type\" for chunk: " .. blue_type)
    return "ERROR"
end

--If the worldgen sets the blue type to be either "down" or "terminal"
--but they forget to set the blue pos, with the function below the
--blue pos will be set to (8,8,8).  This agrees with "PopulateData.cpp"
--in the engine.
function p.get_blue_pos_coord(chunk_id, var_name)
    local level = ga_chunk_id_to_level(chunk_id)
    local vcp = ga_chunk_id_to_vcp(chunk_id)
    if not ga_chunk_dyn_var_exists(level, vcp, var_name) then return 8 end
    return ga_chunk_dyn_get_i(level, vcp, var_name)
end

function p.get_chunk_blue_pos_new_version(chunk_id)
    local frame = this_mod .. ".get_chunk_blue_pos_new_version"
    ga_debug_push(frame)
    local x = p.get_blue_pos_coord(chunk_id, dyn_block_var_blue_pos_x)
    local y = p.get_blue_pos_coord(chunk_id, dyn_block_var_blue_pos_y)
    local z = p.get_blue_pos_coord(chunk_id, dyn_block_var_blue_pos_z)
    local value = std.bp(x,y,z)
    ga_debug_pop(frame)
    return value
end

-------------------------------------------------------------------------------
--                        New blue teleportation helpers 2
-------------------------------------------------------------------------------
--These should NOT be called from outside this script.

--Once p.start_tele has been called, this is called
--by the engine over and over again until it returns false.
--Between calls to this function, the engine will "explore"
--(create and destroy chunks).
function p.update()
    local stage = p.get_blue_tele_progress_stage()
    if( stage == 0 ) then return false end

    --Not done yet.
    if( stage == 1 ) then
        p.set_blue_tele_update_stage_1()
        return true --Not done yet.
    end
    if( stage == 2 ) then
        return p.set_blue_tele_update_stage_2()
    end
    --Should never reach here!
    return false
end

--init_dyn_vars does NOT need to be called before this.
--Returns the following:
-- 0 -> We are not blue teleporting.
-- 1 -> We need to first teleport up the the first "down" or "terminal" chunk.
-- 2 -> We need to keep drilling (one chunk per frame) until we reach a "terminal" chunk.
function p.get_blue_tele_progress_stage()
    if not ga_dyn_exists(var_stage) then return 0 end
    return ga_dyn_get_i(var_stage)
end

function p.set_blue_tele_progress_stage(stage)
    if stage == 0 then ga_dyn_remove(var_stage) return end
    ga_dyn_create_i(var_stage)
    ga_dyn_set_i(var_stage, stage)
end

-------------------------------------------------

--Teleporting up (towards the root) to the first chunk
--that is of type "down" or "terminal".
function p.set_blue_tele_update_stage_1()
    if( p.get_blue_tele_progress_stage() ~= 1 ) then --Safety.
        ga_print("*** Error: set_blue_tele_update_stage_1 not called in stage 1")
        ga_exit()
    end
    local frame = this_mod .. ".set_blue_tele_update_stage_1"
    ga_debug_push(frame)
    --
    local source_chunk_id = ga_dyn_get_i(var_start_chunk_id)
    --
    local top_chunk_id = p.get_blue_dest_top_chunk_id(source_chunk_id)
    local top_chunk_path = ga_chunk_id_to_path(top_chunk_id)
    --
    --The target viewer offset does not matter in spirit mode:
    local top_chunk_offset = std.vec(1.5, 1.5, 1.5)

    --Debugging.
    -- local top_level = ga_chunk_id_to_level(top_chunk_id)
    -- ga_print("set_blue_tele_update_stage_1: top_level = " .. tostring(top_level))
    -- ga_print("set_blue_tele_update_stage_1: top_path = " .. top_chunk_path)

    --In spirit mode, the player does not have a body
    --(but they are still "in" a chunk).
    --Exploration is faster in spirit mode because we do not
    --precompute certain chunk information during chunk generation.
    ga_move_set_body_spirit()

    ga_tele(top_chunk_path, top_chunk_offset)

    p.set_blue_tele_progress_stage(2)

    ga_debug_pop(frame)
end

function p.maybe_skip_render_frame()
    local always_render = ga_dyn_get_b(var_always_render)
    if( always_render ) then return end

    --For speed we could not render at all anymore until
    --the teleportation is done.
    --However we can be sneaky and only render
    --the first out of every 20 frames.
    local render_countdown = ga_dyn_get_i(var_render_countdown)
    ga_print("render countdown = " .. tostring(render_countdown))
    if( render_countdown > 0 ) then
        --Do not render the next frame.
        ga_render_skip_next_frame()
        ga_dyn_set_i(var_render_countdown, render_countdown-1)
    else
        --We WILL render the next frame.
        ga_dyn_set_i(var_render_countdown, 20)
    end
end

--Returns false iff done (like a while loop).
function p.set_blue_tele_update_stage_2()
    --Safety.
    ga_dyn_set_i_by_delta(var_num_iterations, 1)
    local which_try = ga_dyn_get_i(var_num_iterations)
    if which_try > 1000 then
        p.set_blue_tele_update_stage_failed()
    end

    p.maybe_skip_render_frame()
    
    local viewer_chunk_id = ga_get_viewer_chunk_id()
    local blue_type = p.get_chunk_blue_type(viewer_chunk_id)
    local blue_pos = p.get_chunk_blue_pos_new_version(viewer_chunk_id)
    local offset = std.block_center(blue_pos)

    --DEBUGGING!!!
    local viewer_level = ga_get_viewer_level()
    local viewer_chunk_bt = ga_get_viewer_chunk_bt()
    -- ga_print("set_blue_tele_update_stage_2: level = " .. tostring(viewer_level))
    -- ga_print("set_blue_tele_update_stage_2: viewer_chunk_bt = " .. viewer_chunk_bt .. "\n")

    if( blue_type == "up" ) then
        local viewer_chunk_bt = ga_get_viewer_chunk_bt()
        ga_print("*** Error: chunk of blue type \"up\" found during a blue descend.")
        ga_print("           viewer_chunk_bt = " .. viewer_chunk_bt)
        ga_exit()
        return false
    end
    if( blue_type == "terminal" ) then
        ga_tele_same_level(offset)
        p.set_blue_tele_update_stage_finish()
        return false --Done.
    end
    if( blue_type == "down" ) then
        --Moving the viewer to a child of the viewer's current chunk.
        ga_shrink2(offset)
        return true --Not done.
    end
end

--Called by the p.set_blue_tele_update_stage_2 function.
function p.set_blue_tele_update_stage_finish()
    --This will restore the player's body to the mode it
    --was just before changing to spirit mode.
    ga_move_set_body_spirit_off()

    --Cleaning up.
    p.remove_dyn_vars()
    p.set_blue_tele_progress_stage(0)
end

--Called if the while loop is taking to long.
function p.set_blue_tele_update_stage_failed()
    ga_print("*** Error: Too many shrinks in search of blue rings.")
    local num_tries = ga_dyn_get_i(var_num_iterations)
    ga_print("    num_tries = " .. tostring(num_tries))
    ga_exit()
end

-------------------------------------------------------------------------------
--                                  Rant
-------------------------------------------------------------------------------
--Begin rant.
--Chunk variables are not actually stored in their chunk, but in their parent chunk.
--That is, the chunk variables of a chunk are the block variables of the block
--of that chunk.  Every chunk is itself a block, EXCEPT the root chunk.
--Thus, we have a problem about how to store chunk variables for that.
--There needs to be a separate system for storing, saving, and loading the
--chunk variables of the root chunk.  This is annoying.
--As a workaround to this issue, we allow procedural world generation to set the
--chunk variables of the root chunk.  However, after the root chunk has been
--generated, the chunk variables of the root chunk cannot be changed.
--End rant.
