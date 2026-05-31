--File: game_journal_english_yw_small_cannon_pyramid.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "You will not find my body in any place in this "
        .. "fractal world. This is a place where my mind goes, "
        .. "and now my mind is trapped here.\n\n"
        .. "Any interaction between myself and this place is very "
        .. "indirect.\n\n"
        .. "I have been able to leave these messages for you. "
        .. "That is the extent to which I can modify this place "
        .. "with the energy I have left. "
    game_journal.add_txt(lang, "SMALL_CANNON_PYRAMID_TREASURE_k", str)
    game_journal.add_path("@lore;@lore_k_plight;{30}You will not find my body here")
end

-------------------------------------------------------------------------------
