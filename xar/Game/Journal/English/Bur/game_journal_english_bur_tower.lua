--File: game_journal_english_bur_tower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is ^xff00ffBurlington^!. "
        .. "There are many secrets in the buildings. "
        .. "For example, a room to buy nukes for 100 gold. "
        .. "There is also a room with a ^xff00ffLightning Rifle^!. "
        .. "Rooms without windows have the best treasure.\n\n"
        .. "There is also something hidden deep within this city. "
        .. "To find it, you must \"unlock\" the Burlington City "
        .. "Combination Lock. "
        .. "Places to enter a \"1\" are rooms at the top of buildings "
        .. "that have a blue omega symbol on them."
    game_journal.add_txt(lang, "BURLINGTON_TOWER_PENTHOUSE", str)
    game_journal.add_path("@area;@area_bur;@area_bur_gen;{20}Overview version 2")

    game_journal.add_txt_cb(lang, "BURLINGTON_TOWER_BASE",
        p.BURLINGTON_TOWER_BASE)
    game_journal.add_path("@area;@area_bur;@area_bur_showdown;{10}Overview")

    local str = "Message from your friend K: \n\n"
        .. "^x00ff00As I have gathered, there are at least two fundamentally "
        .. "different types of worlds that can exist:\n"
        .. "1) F-type (flat) and\n"
        .. "2) H-type (hierarchical).\n\n"
        .. "In an F-type world there is essentially a lowest "
        .. "level of detail. "
        .. "Not so for an H-type world. This Fractal Block World is of H-type.\n\n"
        .. "For the project of creating a habitable world, many have "
        .. "chosen to use the F-type architecture."
    game_journal.add_txt(lang, "BURLINGTON_TOWER_FRIEND_RANT_1_part1", str)
    game_journal.add_path("@lore;@lore_fractals;@lore_fractals_f_vs_h;{10}Part 1")

    local str = "^x00ff00I know the truth, that the F-type world I was born into, "
        .. "on the planet Earth, was actually accompanied by "
        .. "an H-type world that had some function.\n\n"
        .. "Even if the vast majority of conscious beings "
        .. "prefer to exist in an F-type world, "
        .. "their friends in the accompanying H-type world "
        .. "can be valuable allies.\n\n"
        .. "H-type worlds can also be sources of terrifying evil."
    game_journal.add_txt(lang, "BURLINGTON_TOWER_FRIEND_RANT_1_part2", str)
    game_journal.add_path("@lore;@lore_fractals;@lore_fractals_f_vs_h;{20}Part 2")

    local str = "More of the message from your friend K: \n\n"
        .. "^x00ff00I now believe the boundary between the F-type world "
        .. "of the ordinary part of planet Earth where I was born "
        .. "and the accompanying H-type world is blurry.\n\n"
        .. "And the boundary may move over time: "
        .. "H-type allies fight to advance the boundary of the F-type world, "
        .. "giving the F-types more territory over the ultra small.\n\n"
        .. "I once thought my consciousness was completely "
        .. "explained as deterministically following from "
        .. "laws describing a lowest level to detail "
        .. "of the F-type architecture."
    game_journal.add_txt(lang, "BURLINGTON_TOWER_FRIEND_RANT_2_part1", str)
    game_journal.add_path("@lore;@lore_fractals;@lore_fractals_f_vs_h;{30}Part 3")

    local str = "^x00ff00Now I think that once things get too small "
        .. "in the F-type world of ordinary planet Earth, "
        .. "they enter into a more H-type form.\n\n"
        .. "My consciousness could be affected by these "
        .. "ultra low levels of detail, but only in ways "
        .. "that could not be (F-type) scientifically tested.\n\n"
        .. "Our friends in the H-type world could be fighting "
        .. "our enemies in the H-type world. "
        .. "And factions in the H-type world could be fighting "
        .. "each other for power over the F-type world."
    game_journal.add_txt(lang, "BURLINGTON_TOWER_FRIEND_RANT_2_part2", str)
    game_journal.add_path("@lore;@lore_fractals;@lore_fractals_f_vs_h;{40}Part 4")

    local str = "^x00ff00Tiny H-type invisible hands modifying the dice "
        .. "rolls used for evolution.\n\n"
        .. "Contracts between lawyers in the F-type and H-type "
        .. "world specifying what foods and "
        .. "psychoactive drugs in the F-type world "
        .. "have what promised effect at the H-type level.\n\n"
        .. "Consensual (according to Boston-Consent-Bootstrapping "
        .. "448 specification) "
        .. "ingestion of Drug XYZ in the "
        .. "scientifically observable component of the F-Type world "
        .. "(at the level of F-type science SC4839) "
        .. "implies consent to support faction X25843 in the "
        .. "H-type collective mind.\n\n"
        .. "Blah blah, and so on."
    game_journal.add_txt(lang, "BURLINGTON_TOWER_FRIEND_RANT_2_part3", str)
    game_journal.add_path("@lore;@lore_fractals;@lore_fractals_f_vs_h;{50}Part 5")

    p.trophy_locations()
end

function p.BURLINGTON_TOWER_BASE(chunk_id)
    --Ignoring chunk_id.
    local str = "This is ^x00ff00Burlington's Showdown Tower^!."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nWhen you enter the tower (in the ceiling) you will be given "
            .. "infinite ammo, but you cannot take the ammo with you when you leave. \n\n"
            .. "^x00ff00At the top of the tower is a station where you can buy upgrades for gold.^!\n\n"
            .. "There is also other treasure: EMP Radius upgrades, Laser Max Ammo upgrades, "
            .. "and a waypoint next to dark hole ammo. ";
    end
    return str
end

function p.trophy_locations()
    local str = "There are trophies inside ^x00ff00Railgun Showdown Caves^!. "
        .. "These are in the blue holes in the walls of the giant columns "
        .. "in the Great White Cavern."
    game_journal.add_txt(lang, "BURLINGTON_TOWER_TROPHY_LIST_2_rail_cave", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_bur;{20}Rail showdown cave")

    local str = "There are trophies inside ^x00ff00Burlington Cities^!. "
        .. "You can find these past the treasure rooms of "
        .. "Large White Flowers."
    game_journal.add_txt(lang, "BURLINGTON_TOWER_TROPHY_LIST_2_bur_city", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_bur;{30}Burlington city")

    local str = "There is a trophy inside ^x00ff00Tegan's Garden^!.\n\n"
        .. "This can be found at a corner of every Burlington City.\n\n"
        .. "^xff0000Warning: The trophy is hidden.^!"
    game_journal.add_txt(lang, "BURLINGTON_TOWER_TROPHY_LIST_2_tegan_garden", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_bur;{40}Tegan's garden")

    local str = "There is a trophy inside the ^x00ff00Green Apple Club^! "
        .. "in Burlington.  This club can be found at the bottom of the giant "
        .. "pillar that has Tegan's Garden on top. "
        .. "Note: you need a Yellow Key to enter the club."
    game_journal.add_txt(lang, "BURLINGTON_TOWER_TROPHY_LIST_2_apple_club", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_bur;{50}Green apple club")
end

-------------------------------------------------------------------------------
