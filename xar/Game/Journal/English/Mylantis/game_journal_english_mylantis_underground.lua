--File: game_journal_english_mylantis_underground.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from Sagittarius A*:\n\n"
        .. "^x0000ff\"The Bulk\" is the region of the multiverse "
        .. "that is in between universes. "
        .. "You might think that it is like a void, "
        .. "but rather it is like a jungle.\n\n"
        .. "The exploration of the Bulk is important "
        .. "for the retrieval of Inner Cores from other universes. "
        .. "This exploration/mining also occurs in Hell. "
        .. "The initial processing of the mined Inner Cores occurs in Hell."
    game_journal.add_txt(lang, "TOPCITY1_BULK_DOOR_part1", str)
    game_journal.add_path("@lore;@lore_area;@lore_area_bulk;{10}Mining ICCCs in the bulk;{10}Part 1")

    local str = "^x0000ffAt a more nuanced level, "
        .. "we explore another universe and find an Inner Core in it, "
        .. "and in the process we generate a certain certificate. "
        .. "The certificate certifies the consistency "
        .. "of the target Inner Core, following from the consistency "
        .. "of the universe that contains it.\n\n"
        .. "These Inner Core Consistency Certificates (ICCCs) "
        .. "are important for the Re-Creation program, "
        .. "which ultimately serves to recreate the universe "
        .. "according to our design."
    game_journal.add_txt(lang, "TOPCITY1_BULK_DOOR_part2", str)
        game_journal.add_path("@lore;@lore_area;@lore_area_bulk;{10}Mining ICCCs in the bulk;{20}Part 2")

    local str = "^x0000ffYou can enter The Bulk in the next room."
    game_journal.add_txt(lang, "TOPCITY1_BULK_DOOR_part3", str)
    --Don't need to record this.

    p.trophy_locations()
end

function p.trophy_locations()
    local str = "There is a trophy at the very top of the Mylantis Top City "
        .. "(in the ^x00ff00Mylantis Top Garden^!)."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_garden", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{20}Mylantis top garden")

    str = "There is a trophy in the ^x00ff00Secret Farmhouse^!. "
        .. "How to get to the Farmhouse is explained at the end of the "
        .. "Burlington City Combination Lock."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_farmhouse", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{30}Secret farmhouse")

    str = "There is a trophy in the ^x00ff00Laser Genesis Planet^!. "
        .. "The planet can be found next to Mylantis. "
        .. "However, entering it requires a key that can only be found "
        .. "in the basement of the secret Farmhouse."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_laser_genesis", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{40}Laser genesis Planet")

    str = "There is the trophy in the treasure room of "
        .. "each ^x00ff00Sapphire Maze^!. "
        .. "Some of these mazes can be found in the Laser Genesis Planet. "
        .. "That planet is described elsewhere in this room."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_sapphire", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{50}Sapphire maze")

    str = "There is a trophy inside each ^x00ff00Beta Menger Sponge^!.\n\n"
        .. "When you enter such a sponge, you need to shrink 100 times to reach "
        .. "a Beta Sponge Town (which has the trophy).\n\n"
        .. "There is a Beta Menger Sponge just around the corner from "
        .. "where you are now."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_beta_sponge", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{60}Beta menger sponge")

    str = "There is a trophy inside each ^x00ff00Topaz Gem^!.\n\n"
        .. "These can be found in Layer 4 of the Mylantis Caves. "
        .. "See the Mylantis Caves Library for more about the layers "
        .. "of the Mylantis Caves."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_topaz", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{70}Topaz gem")

    str = "There is a trophy inside each ^x00ff00Iolite Gem^!.\n\n"
        .. "These can be found in Layer 6 of the Mylantis Caves. "
        .. "See the Mylantis Caves Library for more about the layers "
        .. "of the Mylantis Caves."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_iolite", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{80}Iolite gem")

    str = "There is a trophy inside each ^x00ff00Emerald Gem^!.\n\n"
        .. "These can be found in Layer 8 of the Mylantis Caves. "
        .. "See the Mylantis Caves Library for more about the layers "
        .. "of the Mylantis Caves."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_emerald", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{90}Emerald gem")

    str = "There is a trophy inside each ^x00ff00Denver City^!.\n\n"
        .. "These can be found in Layer 10 of the Mylantis Caves. "
        .. "See the Mylantis Caves Library for more about the layers "
        .. "of the Mylantis Caves."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_denver", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{100}Denver city")

    str = "If you go to the bottom of Mylantis (beneath the crust, "
        .. "beneath all the cave layers...) at the very bottom you will "
        .. "find the ^x00ff00Red Homing Rocket Caves^!. "
        .. "Those caves contain upgrades for your Homing Rocket. "
        .. "At the very bottom of these red caves, you can find "
        .. "^x00ff00Amethyst Mazes^!. "
        .. "There is a trophy at the end of each such maze."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_amethyst", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{110}Amethyst maze")

    str = "There is a trophy at the ^x00ff00Edge of the World^!. "
        .. "You can find this by growing as much as possible. "
        .. "Start by growing into Outer Space Level -1, "
        .. "then keep growing."
    game_journal.add_txt(lang, "TOPCITY1_TROPHY_LIST_edge_of_world", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{120}Edge of world")
end

-------------------------------------------------------------------------------
