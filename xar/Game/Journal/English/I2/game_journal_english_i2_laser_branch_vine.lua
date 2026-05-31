--File: game_journal_english_i2_laser_branch_vine.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is the outermost layer of a "
        .. "^x00ff00Laser Branching Vine^!.\n\n"
        .. "With a medium probability on the inside of this "
        .. "you will find a #1 vine.\n\n"
        .. "Then within that vine, with a medium probability "
        .. "you will find a #2 vine.\n\n"
        .. "... and then a #3 vine. On the inside of #3 vines "
        .. "are sometimes treasure rooms "
        .. "with significant Laser gun upgrades."
    game_journal.add_txt(lang, "LBV_1_CASE", str)
    game_journal.add_path("@area;@area_i2;@area_i2_vine;@area_i2_vine_lbv;{10}Overview")
end

-------------------------------------------------------------------------------
