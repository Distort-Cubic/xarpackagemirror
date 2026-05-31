--File: game_base_tele_pink.lua

-------------------------------------------------------------------------------
--                          Pink teleportation API
-------------------------------------------------------------------------------
--This is the only part of this script which can be called from the outside.

--Starts a "pink" teleportation for the specified block pos.
--That is, we start at the given chunk_id, then we move up the
--chunk tree (towards the root) until we reach a chunk with
--a "pink sphere" bent there.
--Will play a sound if worked.
function p.tele(source_chunk_id)
    ga_debug_push("game_base_tele_pink")

    --The hard work.
    local can_tele = true
    local target_chunk_id = p.tele_pink_helper(source_chunk_id, can_tele)
    local worked = (target_chunk_id >= 0)

    --Playing a sound.
    if( worked ) then
        ga_play_sound("pink_ring")
    else
        ga_play_sound("error")
    end

    ga_debug_pop("game_base_tele_pink")
end

--This can be called from the outside.
--Returns -1 if the dest chunk does not exist.
function p.get_pink_dest_chunk_id(source_chunk_id)
    local can_tele = false
    return p.tele_pink_helper(source_chunk_id, can_tele)
end

--This can be called from the outside.
--Returns -1 if the dest chunk does not exist.
--Does not actually teleport.
function p.get_pink_dest_level(source_chunk_id)
    local target_chunk_id = p.get_pink_dest_chunk_id(source_chunk_id)
    if( target_chunk_id < 0 ) then return -1 end
    local target_level = ga_chunk_id_to_level(target_chunk_id)
    return target_level
end

-------------------------------------------------------------------------------
--                          Helper functions
-------------------------------------------------------------------------------
--Do NOT call these from outside this script.

--Helper function.
--Returns the chunk id of the dest chunk (if it worked),
--and returns -1 otherwise.
function p.tele_pink_helper(source_chunk_id, can_tele)
    local bent_type = "bent_base_ring_pink_dest"
    local cur_chunk_id = source_chunk_id
    while( cur_chunk_id >= 0 ) do
        local data = ga_search_for_bent_in_chunk(cur_chunk_id, bent_type)
        if( data.is_valid ) then
            --Found the bent.
            local bent_lbp = data.value
            local target_offset = std.block_center(bent_lbp) --Use a different function name?
            local target_chunk_path = ga_chunk_id_to_path(cur_chunk_id)
            if( can_tele ) then
                ga_tele(target_chunk_path, target_offset);
            end
            return cur_chunk_id
        end
        local parent_chunk_id = ga_chunk_id_to_parent_chunk_id(cur_chunk_id)
        cur_chunk_id = parent_chunk_id
    end
    return -1
end
