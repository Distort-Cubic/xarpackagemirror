--File: game_worldseed.lua

--Buckle yourself in.

--This should be the first function that is called
--when either a new game is created or a game is loaded.
--This is in addition to the engine var "game.package.seed_original".
function p.emergency_surgery()
    local current_world_seed = ga_get_sys_i("game.package.seed") --An engine var.
    local backup_seed = ga_get_i("worldgen.state.seed_original") --A xar specific var.
    --Order matters.
    if( backup_seed < 0 ) then
        --The backup seed has never been set.
        --Setting it now (and never again).
        ga_print("Setting game.globals.worldgen.state.seed_original to " .. tostring(current_world_seed))
        ga_set_i("worldgen.state.seed_original", current_world_seed)
        ga_worldgen_refresh_state_var("seed_original")
    end
    --Now worldgen.seed_original is valid and will not be set again.
    --Clearing the engine's world seed for backward compatibility.
    --That is, the new random number functions of the engine, when a world seed of zero is used,
    --behave identically to the old random number functions (with any world seed).
    if( current_world_seed ~= 0 ) then
        ga_print("Setting game.package.seed to zero.  Boom!")
        ga_set_sys_i("game.package.seed", 0) --Boom.
    end
end
