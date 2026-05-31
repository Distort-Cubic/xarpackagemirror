--File: game_journal_english_i3_colchester.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "COLCHESTER_PENTHOUSE", p.COLCHESTER_PENTHOUSE)
    game_journal.add_path("@area;@area_i3;@area_i3_city;@area_i3_city_col;{10}Overview")

    p.trophy_locations()
end

function p.COLCHESTER_PENTHOUSE(chunk_id)
    --Ignoring chunk_id.
    local str = "This is ^x00ff00Colchester^!!"
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nWe have many I3 WIG Flowers. "
            .. "We also have a ^x00ff00Large White Flower^!, "
            .. "Although you can also find these in the I3 Main Forest.\n\n"
            .. "There is also a place here to buy nukes for 250 gold."
    end
    return str
end

function p.trophy_locations()
    local str = "There are trophies inside ^x00ff00I3 Libraries^!. "
        .. "You can find these growing on the trees "
        .. "of the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_lib", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{10}I3 library")

    local str = "There are trophies inside ^x00ff00Colchester Towns^!. "
        .. "These towns can be found growing on the trees of the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_colchester", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{20}Colchester")

    local str = "There are trophies inside ^x00ff00Large White Flowers^!. "
        .. "You can find these growing on the trees "
        .. "on the I3 Main Forest.  Also, each Colchester Town contains such a flower."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_large_white_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{30}Large white flower")

    local str = "There are trophies inside ^x00ff00Red Maze Flowers^!. "
        .. "You can find these growing on the trees "
        .. "on the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_red_maze_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{40}Red maze flower")

    local str = "There are trophies inside ^x00ff00Jackfruits^!. "
        .. "You can find these growing on the trees "
        .. "on the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_jackfruit", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{50}Jackfruit")

    local str = "There are trophies inside ^x00ff00Cacti^!. "
        .. "You can find these in Deserts, which are in the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_cactus", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{60}Cactus")

    local str = "There are trophies inside each ^x00ff00Aladdin's Cave^!. "
        .. "You can find these in Deserts, which are in the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_aladdin_cave", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{70}Aladdin's cave")

    local str = "There are trophies inside ^x00ff00Desert Caves^!. "
        .. "You can find these in Deserts. "
        .. "Note: there are not the same thing as Aladdin's Caves, which are also "
        .. "found in I3 deserts."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_desert_cave", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{80}Desert caves")

    local str = "There are trophies inside ^x00ff00Desert Flowers^!. "
        .. "You can find these in Deserts, which are in the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_desert_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{90}Desert flower")

    local str = "There are trophies inside ^x00ff00Salmon Mushrooms^!. "
        .. "You can find these in Dandelion Patches that are on the ground "
        .. "of the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_salmon_mushroom", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{100}Salmon mushroom")

    local str = "There are trophies inside ^x00ff00Black Mushrooms^!. "
        .. "You can find these inside Salmon Mushrooms."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_black_mushroom", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{110}Black mushroom")

    local str = "There are trophies inside ^x00ff00Yellow Mushrooms^!. "
        .. "You can find these in Dandelion Patches that are on the ground "
        .. "of the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_yellow_mushroom", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{120}Yellow mushroom")

    local str = "There are trophies inside ^x00ff00Red Mushrooms^!. "
        .. "You can find these in many places inside I3. "
        .. "For example, every Yellow Mushroom contains one at its "
        .. "bottom."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_red_mushroom", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{130}Red mushroom")

    local str = "There are trophies at the centers of ^x00ff00Rivers^!. "
        .. "Rivers flow through the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_river", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{140}River")

    local str = "In Rivers you can find ^x00ff00Tangerines^!. "
        .. "These are rare, so an efficient way to find them is to "
        .. "grow at a Grow Temple "
        .. "(which can be found the ground of the I3 Main Forest) "
        .. "to become abnormally large "
        .. "so that you can fly at a fast rate down Rivers."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_tangerine", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{150}Tangerines")
    
    local str = "You can find trophies at the center of the ^x00ff00Treetops^! "
        .. "of Mahogany trees in the I3 Main Forest."
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_treetop", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{20}Part 1;{160}Mahogany treetop")

    local str = "In the center of the Treetops of the Mahogany trees in I3, "
        .. "there are ^x00ff00Inner Trees^!. "
        .. "You can find trophies at the end of most of the branches of these "
        .. "inner trees. ";
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_inner_tree", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{30}Part 2;{10}Mahogany inner tree")

    local str = "There is a trophy in ^x00ff00Deep Sliver Mazes^!. "
        .. "These are hard to find. To learn how to find one, go to the pyramids "
        .. "in Rivers (in I3). ";
    game_journal.add_txt(lang, "COLCHESTER_TROPHY_LIST_sliver_maze", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{30}Part 2;{20}Deep sliver maze")
end

-------------------------------------------------------------------------------
