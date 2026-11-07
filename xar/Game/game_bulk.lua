--File: game_bulk.lua

function p.get_is_player_in_bulk()
    local var = "dyn_in_bulk";
    local chunk_id = ga_get_viewer_chunk_id()
    local var_exists = ga_chunk_id_dyn_var_exists(chunk_id, var)
    if( not var_exists ) then return false end
    return ga_chunk_id_dyn_get_b(chunk_id, var)
end
