--File: game_journal_english_i2_fanatic_weed.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This orange structure is a ^x00ff00Small Cannon Gym^!.\n\n"
        .. "33% of the time there is an ammo depot inside.\n\n"
        .. "This light blue structure you are on now is called a "
        .. "^x00ff00Fanatic Weed^!, "
        .. "also known as Fanatic Lattice Growth."
    game_journal.add_txt(lang, "FANATIC_WEED_CANNON_GYM", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_weed;{20}Small cannon gym")
end

-------------------------------------------------------------------------------
