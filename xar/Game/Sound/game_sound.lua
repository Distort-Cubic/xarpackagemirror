--File: game_sound.lua

--This is here so modders can redefine how the package
--handles playing sounds.  This is still a work in progress.
--
--Note "__TRUST_ME__" is to be used for any potential "source code linter".

-------------------------------------------------------------------------------
-- Local variables
-------------------------------------------------------------------------------

--"Deny" callbacks.
--If any one of these returns true,
--then the sound is not played.
local m_deny_cbs = {}

-------------------------------------------------------------------------------
-- Deny sound callback API
-------------------------------------------------------------------------------

--The var func should be a reference to a function that takes
--a string argument (the sound name) and returns a bool.
--If it returns true, the sound will be "denied" (it will not be played).
function p.reg_deny_sound_cb(name, func)
    m_deny_cbs[name] = func
end

function p.unreg_deny_sound_cb(name)
    m_deny_cbs[name] = nil
end

--This should only be called from inside this script.
function p.m_should_deny_sound(name)
    for k,v in pairs(m_deny_cbs) do
        local func = v
        local should_deny = func(name)
        if( should_deny ) then return true end
    end
    return false
end

--Note: We could imagine an alternate system were we deny sounds
--based on their filename, not their name.

-------------------------------------------------------------------------------
-- Main API
-------------------------------------------------------------------------------

function p.play_sound(sound_name)
    if( sound_name == "" ) then return end --Could complain.
    if( p.m_should_deny_sound(name) ) then return end --Added in "1.02.02".
    ga_play_sound(sound_name) --__TRUST_ME__
end

function p.play_sound_menu(sound_name)
    if( sound_name == "" ) then return end --Could complain.
    if( p.m_should_deny_sound(name) ) then return end --Added in "1.02.02".
    ga_play_sound_menu(sound_name) --__TRUST_ME__
end

-- function p.play_sound_with_volume(sound_name, vol)
--     if( sound_name == "" ) then return end --Could complain.
--     local __TRUST_ME__ = sound_name
--     ga_play_sound_with_volume(__TRUST_ME__, vol)
-- end

-- function p.play_sound_menu_with_volume(sound_name, vol)
--     if( sound_name == "" ) then return end --Could complain.
--     local __TRUST_ME__ = sound_name
--     ga_play_sound_menu_with_volume(__TRUST_ME__, vol)
-- end

-------------------------------------------------------------------------------
-- Loading
-------------------------------------------------------------------------------

function p.__load_game_early()
    m_deny_cbs = {}

    -- p.m_test()
end

-------------------------------------------------------------------------------
-- Testing
-------------------------------------------------------------------------------

function p.m_test()
    p.reg_deny_sound_cb("test_deny_everything", p.m_test_deny_cb)
end

function p.m_test_deny_cb(sound_name)
    return true --Denies every sound.
end
