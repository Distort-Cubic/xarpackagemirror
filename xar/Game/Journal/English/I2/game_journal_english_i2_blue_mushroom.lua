--File: game_journal_english_i2_blue_mushroom.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from Vega to Altair:\n\n"
        .. "^x0000ffI know you like the aesthetics of someone holding "
        .. "two Railguns: one Classic Railgun and one Vampire Railgun.\n\n"
        .. "However I amassed enough Inner Cores to construct the "
        .. "^xff00ffSuper Vampire Railgun^x0000ff. This combines "
        .. "the best of both weapons.\n\n"
        .. "It has the same damage per ammo and damage per second as "
        .. "the Classic Railgun.\n\n"
        .. "But it also has the same health stealing capability as the "
        .. "Vampire Railgun.\n\n"
        .. "Now your fantasy of a warrior wielding a Classic Railgun "
        .. "and a Vampire Railgun can be replaced with a warrior carrying "
        .. "a Rapid Railgun and a Super Vampire Railgun."
    game_journal.add_txt(lang, "BLUE_MUSHROOM_WEAPON_MOD", str)
    game_journal.add_path("@lore;@lore_random;@lore_random_wep;{30}Super vampire railgun")
end

-------------------------------------------------------------------------------
