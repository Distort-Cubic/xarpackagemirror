--File: game_journal_english_mid_jericho.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    p.trophy_locations()
end

function p.trophy_locations()
    local str = "There is a trophy in the treasure room of each ^x00ff00Small White Flower^!. "
        .. "These can be found in many places. "
        .. "There is one below the Starting Island of each Ying World.\n\n"
        .. "^xff00ffNote that the treasure rooms of Small White Flowers change if the flower "
        .. "is inside an Alpha Cube."
    game_journal.add_txt(lang, "JERICHO_NWP_TROPHY_LIST_small_white_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_nwp;{20}Small white flower")

    local str = "There is a trophy in the treasure room of each ^x00ff00Small Black Flower^!. "
        .. "You can find these growing on the trees of Ying Forests.\n\n"
        .. "If you are clever, you can find these flowers in Laser Forts."
    game_journal.add_txt(lang, "JERICHO_NWP_TROPHY_LIST_small_black_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_nwp;{30}Small black flower")

    local str = "There is a trophy in each apple of each ^x00ff00Apple Tree^!. "
        .. "You can find apple trees on the roofs of buildings in Richmond and Williston.\n\n"
        .. "There are 3 types of apples: red, yellow, and green. "
        .. "Some apple trees have only red apples, "
        .. "some have only red and yellow apples, "
        .. "and some have all three types."
    game_journal.add_txt(lang, "JERICHO_NWP_TROPHY_LIST_apple_tree", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_nwp;{40}Apple tree")

    local str = "There is a trophy in the treasure room of each ^x00ff00Health Tower^!. "
        .. "You can find these on the green growth inside Tau Caves. "
        .. "You can also find a handful of these towers in Huntington, which "
        .. "is at the center of each Orange."
    game_journal.add_txt(lang, "JERICHO_NWP_TROPHY_LIST_health_tower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_nwp;{50}Health tower")

    local str = "There is a trophy in the treasure room of each ^x00ff00Alpha Cube^!. "
        .. "These cubes have many rooms in them, like in the movie Cube. "
        .. "You can first find these cubes in Tau Caves "
        .. "(by flying around Tau Caves Type 2).\n\n"
        .. "Deeper in inner space, you can find these cubes in the center of the "
        .. "top green part of the trees that grow on the horizontal beams "
        .. "in the Minigun Ammo Forest (in I2)."
    game_journal.add_txt(lang, "JERICHO_NWP_TROPHY_LIST_alpha_cube", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_nwp;{60}Alpha cube")
end

-------------------------------------------------------------------------------
