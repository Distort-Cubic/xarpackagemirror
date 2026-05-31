--File: game_journal_english_mylantis_jade_museum.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Jade Museum^!. "
        .. "It is a 7x7x7 maze. "
        .. "The treasure has\n\n"
        .. "1) significant Railgun upgrades,\n\n"
        .. "2) ^xff00ffa Laser Super Damage upgrade^!,\n\n"
        .. "3) ^xff00ff5 Laser Max Ammo upgrades^!, and\n\n"
        .. "4) ^xff00ffJade Armor (1000%) next to a waypoint^!.\n\n"
        .. "^xff0000The monsters will kill you instantly when they see you. "
        .. "Your only hope is to stun them with the EMP.^!"
    game_journal.add_txt(lang, "JADE_MUSEUM_MAZE_ENTRANCE", str)
    game_journal.add_path("@area;@area_my;@area_my_jade_museum;{10}Overview")
end

-------------------------------------------------------------------------------
