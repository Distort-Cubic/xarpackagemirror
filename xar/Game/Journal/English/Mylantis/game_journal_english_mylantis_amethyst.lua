--File: game_journal_english_mylantis_amethyst.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is an ^x00ff00Amethyst Maze^!.\n\n"
        .. "There is an entrance at the top.\n\n"
        .. "^xff0000However once you go in, the only way out is "
        .. "with a waypoint.^!\n\n"
        .. "The treasure has significant Dark Hole upgrades "
        .. "and some Homing Rocket upgrades."
    game_journal.add_txt(lang, "AMETHYST_GEM_WALL", str)
    game_journal.add_path("@area;@area_my;@area_my_amethyst;{10}Overview")

    local str = "Message from TON 618:\n\n"
        .. "^x0000ffI put Blue Ring Devices into Large White Flowers. "
        .. "That's the kind of thing I do!\n\n"
        .. "Inside a Large White Flower, go into the "
        .. "Great White Cavern. "
        .. "You will find ^x00ff00Rail Showdown Caves^x0000ff in the "
        .. "giant columns. In their treasure rooms, you can shrink and "
        .. "find a few flowers. But if you shrink and venture BELOW the "
        .. "treasure room, you will find a special kind of "
        .. "Small Yellow Flower that has a Blue Ring Device "
        .. "in its main room.\n\n"
        .. "Ha ha!  Hahaha!  Haa!"
    game_journal.add_txt(lang, "AMETHYST_GEM_TREASURE", str)
    game_journal.add_path("@area;@area_my;@area_my_amethyst;{20}Secret hint about large white flowers")
    game_journal.add_path("@area;@area_bur;@area_bur_cavern;@area_bur_cavern_blue_secret")
end

-------------------------------------------------------------------------------
