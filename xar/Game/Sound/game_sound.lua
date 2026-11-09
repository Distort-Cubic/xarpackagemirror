--File: game_sound.lua

--This is here so modders can redefine how the package
--handles playing sounds.  This is still a work in progress.
--
--Note "__TRUST_ME__" is to be used for any potential "source code linter".

-------------------------------------------------------------------------------
-- Local variables
-------------------------------------------------------------------------------

--"Deny" callbacks.
--The sound volume will be the minimum value
--returned by any one of these functions.
local m_soften_cbs = {}

-------------------------------------------------------------------------------
-- Deny sound callback API
-------------------------------------------------------------------------------

--The var func should be a reference to a function that takes
--a string argument (the sound name) and returns a float.
--The float is the volume the sound should be played at.
--0.0 (or a negative number) means it will not be played.
--1.0 is the max volume.
function p.reg_soften_sound_cb(name, func)
    m_soften_cbs[name] = func
end

function p.unreg_soften_sound_cb(name)
    m_soften_cbs[name] = nil
end

--This should only be called from inside this script.
function p.m_soften_sound_volume(name)
    --We call ALL off the callbacks,
    --even after one of them says to deny the sound.
    local lowest = 1.0
    for k,v in pairs(m_soften_cbs) do
        local func = v
        local cur_vol = func(name)
        if( cur_vol < lowest ) then lowest = cur_vol end
    end
    return lowest
end

--Note: We could imagine an alternate system were we deny sounds
--based on their filename, not their name.

-------------------------------------------------------------------------------
-- Main API
-------------------------------------------------------------------------------

function p.play_sound(sound_name)
    if( sound_name == "" ) then return end --Could complain.
    local soften_vol = p.m_soften_sound_volume(sound_name)
    if( soften_vol < 0.0 ) then return end
    if( soften_vol < 0.99 ) then
        ga_play_sound_with_volume(sound_name, soften_vol) --__TRUST_ME__
    else
        ga_play_sound(sound_name) --__TRUST_ME__
    end
end

function p.play_sound_menu(sound_name)
    if( sound_name == "" ) then return end --Could complain.
    local soften_vol = p.m_soften_sound_volume(sound_name)
    if( soften_vol < 0.0 ) then return end
    if( soften_vol < 0.99 ) then
        ga_play_sound_menu_with_volume(sound_name, soften_vol) --__TRUST_ME__
    else
        ga_play_sound_menu(sound_name) --__TRUST_ME__
    end
end

-------------------------------------------------------------------------------
-- Loading
-------------------------------------------------------------------------------

function p.__load_game_early()
    m_soften_cbs = {}

    -- p.m_test()
end

-------------------------------------------------------------------------------
-- Testing
-------------------------------------------------------------------------------

function p.m_test()
    -- p.reg_soften_sound_cb("test_deny_everything", p.m_test_deny_cb)
    p.reg_soften_sound_cb("test_soften_everything", p.m_test_soften_cb)
end

function p.m_test_deny_cb(sound_name)
    return -1.0 --Denies every sound.
end

function p.m_test_soften_cb(sound_name)
    return 0.1 --Denies every sound.
end
