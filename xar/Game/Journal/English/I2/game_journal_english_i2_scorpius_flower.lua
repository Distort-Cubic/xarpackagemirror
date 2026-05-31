--File: game_journal_english_i2_scorpius_flower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Scorpius Flower^!. \n\n"
        .. "Inside is a Scorpius Portal (which is a gate into "
        .. "I1, group #1 of the Infinity Flower).\n\n"
        .. "However, the Scorpius Portal is guarded by a "
        .. "Clockwork Watchman, which is ^xffffffVERY POWERFUL^!.\n\n"
        .. "Note: there are no ^xff00ffPink Rings^! here."
    game_journal.add_txt(lang, "SCORPIUS_FLOWER", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_scorpius;{10}Overview")
end

-------------------------------------------------------------------------------
