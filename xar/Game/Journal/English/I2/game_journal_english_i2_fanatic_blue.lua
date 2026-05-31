--File: game_journal_english_i2_fanatic_blue.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Remember this about your Dark Hole gun:\n\n"
        .. "1) The secondary fire regenerates ammo.\n\n"
        .. "2) The longer you hold down the primary fire, "
        .. "the more damage is charged up.\n\n"
        .. "3) The dark holes can only hurt monsters larger than you."
    game_journal.add_txt(lang, "FANATIC_BLUE_TREASURE_MINOR_dark_hole", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_gen;{50}Reminder")

    local str = "Probably the best place to find Dark Hole damage upgrades "
        .. "is in Mystic Vines. "
        .. "These can be found hanging from Willow Trees, which "
        .. "grow in Fanatic Islands.\n\n"
        .. "^xff0000Warning: they are challenging.^!"
    game_journal.add_txt(lang, "FANATIC_BLUE_TREASURE_MAJOR_CHUNK", str)
    --Not adding to journal (it is already part of the dark hole location room).
end

-------------------------------------------------------------------------------
