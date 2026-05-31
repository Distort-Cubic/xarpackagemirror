--File: game_journal_english_i3_forest_museum.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Forest Museum^!. "
        .. "It is a 7x7x7 maze. "
        .. "The treasure has\n\n"
        .. "1) significant EMP upgrades,\n\n"
        .. "2) ^xff00ffa Laser Super Damage upgrade^!,\n\n"
        .. "3) ^xff00ff5 Laser Max Ammo upgrades^!, and\n\n"
        .. "4) ^xff00ff6 EMP ammo next to a waypoint^!.\n\n"
        .. "^xff0000The monsters will kill you instantly when they see you. "
        .. "Your only hope is to stun them with the EMP.^!"
    game_journal.add_txt(lang, "FOREST_MUSEUM_MAZE_ENTRANCE", str)
    game_journal.add_path("@area;@area_i3;@area_i3_main_forest;@area_i3_main_forest_mus;{10}Overview")
end

-------------------------------------------------------------------------------
