--File: game_journal_english_yw_ying_world.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00This is the \"starting island\" of the Ying World.^! "
        .. "The Ying World has many green floating islands like this in it. \n\n"
        .. "The Ying World is but a bubble, contained in a much larger "
        .. "universe called ^x00ff00Xar^!. "
    game_journal.add_txt(lang, "YW_RESPAWN", str)
    game_journal.add_path("@area;@area_yw;@area_yw_island;@area_yw_island_starting;{10}Overview")

    local str = "Welcome to the ^x00ff00Ying World!^! "
        .. "This world consists of islands, "
        .. "floating in space, that are covered "
        .. "with Ying Forests (with \"^x00ff00Ying Trees^!\"). \n\n"
        .. "You should find more information totem poles "
        .. "like this one. "
        .. "You can find them by shrinking into the ying forest on "
        .. "this island. \n\n"
        .. "The design of a totem pole designates "
        .. "the message.  By keeping track of these "
        .. "designs you will know which "
        .. "messages you have read. "
        .. "^x00ff00A totem pole with the same design as this one "
        .. "but also with an \"exit sign\" will tell you how to "
        .. "leave this world.^! "
    game_journal.add_txt(lang, "YW_TOTEM_BEGIN", str)
    game_journal.add_path("@area;@area_yw;@area_yw_gen;{10}Totem poles;{10}Overview")
    
    local str = "Is this your first time using a waypoint, "
        .. "or perhaps you forgot how to use one?\n\n"
        .. "Here is the basic way to use a waypoint. "
        .. "First look at it (it is blue with a W) and press the F key. "
        .. "Then \"enable\" it using the first option in its menu. "
        .. "When you are enabling it, you should give it a name. "
        .. "Then, back in the menu for the waypoint, select travel "
        .. "and select whatever other waypoint you want to travel to.\n\n"
        .. "You can rename a waypoint by hiding it and then "
        .. "unhiding it.\n\n"
        .. "You can also travel without enabling the waypoint, "
        .. "but then you will not be able to travel back "
        .. "(unless you are using the \"temporary waypoint option\").\n\n"
        .. "On the other hand, ^x00ff00Bookmarks^! use a different system. "
        .. "LEFT click on a bookmark box to read how it works. "
    game_journal.add_txt(lang, "YW_WP", str)
    game_journal.add_path("@basic;@basic_waypoint;{20}How to use")
    game_journal.add_path("@basic;@basic_waypoint;{90}Bookmarks") --Ok?

    game_journal.add_txt_cb(lang, "YW_TOTEM_YING_FLOWER", p.YW_TOTEM_YING_FLOWER)
    game_journal.add_path("@area;@area_yw;@area_yw_flower;@area_yw_flower_ying;{10}Overview")

    game_journal.add_txt_cb(lang, "YW_TOTEM_YELLOW_FLOWER", p.YW_TOTEM_YELLOW_FLOWER)
    game_journal.add_path("@area;@area_yw;@area_yw_flower;@area_yw_flower_yellow;{10}Overview")

    local str = "When you enter the yellow room "
        .. "of a Small Yellow Flower, there is a secret "
        .. "way to enter the gray dungeon block: "
        .. "go to the very middle of the bottom of the block. "
        .. "If you are small enough, you will see a ^xff00ffsecret tunnel^! "
        .. "which leads you straight to the treasure room!\n\n"
        .. "^xff00ffThat secret tunnel also has a very important secret in it.^!"
    game_journal.add_txt(lang, "YW_TOTEM_YELLOW_FLOWER_SECRET_yellow_flower", str)
    game_journal.add_path("@area;@area_yw;@area_yw_flower;@area_yw_flower_yellow;{20}Secret entrance")
    game_journal.add_path("@area;@area_yw;@area_yw_forest;@area_yw_forest_air;{10}Gray cube;{10}Corner hint;{20}The hint itself")

    str = "^x00ff00Cannon Pyramid Farms^! can be useful to quickly teleport to certain places. "
        .. "They only exist inside Small Yellow Flowers, next to the treasure room. "
        .. "A Cannon Pyramid Farms chunk is the same size as the treasure room chunk. "
        .. "With a small chance, there will be a farm next to the treasure chunk, and if "
        .. "it is there it will be clear.\n\n"
        .. "The bottom of the big gray pole of a Cannon Pyramid Farm "
        .. "has an opening that leads to another Small Yellow Flower.\n\n"
        .. "^xff00ffAlso, the little buildings on the floor of the dungeon layers of a Small Yellow Flower "
        .. "have gold in them.^!"
    game_journal.add_txt(lang, "YW_TOTEM_YELLOW_FLOWER_SECRET_pyramid_farm", str)
    game_journal.add_path("@area;@area_yw;@area_yw_pyr;@area_yw_pyr_farm;{10}Overview")

    local str = "Flying through a ying forest to find "
        .. "Small Yellow Flowers can be tedious. "
        .. "There is something called a "
        .. "\"^x00ff00Jumbo Yellow Flower^!\" "
        .. "where, if you complete all of its dungeon layers, "
        .. "you will find a patch of 5 Small Yellow "
        .. "Flowers. \n\n"
        .. "You can find a Jumbo Yellow Flower "
        .. "in the treasure room of a Small Cannon Pyramid. "
        .. "The Jumbo Yellow Flower will be there with a small probability "
        .. "(and will replace the usual treasure). "
        .. "These modified Small Cannon Pyramids also look different "
        .. "from the outside. "
    game_journal.add_txt(lang, "YW_TOTEM_JUMBO_YELLOW_FLOWER", str)
    game_journal.add_path("@area;@area_yw;@area_yw_flower;@area_yw_flower_jumbo_yellow;{10}Overview")

    game_journal.add_txt_cb(lang, "YW_TOTEM_CANNON", p.YW_TOTEM_CANNON)
    game_journal.add_path("@area;@area_yw;@area_yw_pyr;@area_yw_pyr_small;{10}Overview")

    game_journal.add_txt_cb(lang, "YW_TOTEM_ALT_BASE", p.YW_TOTEM_ALT_BASE)
    game_journal.add_path("@area;@area_yw;@area_yw_island;@area_yw_island_gc;{10}Overview")

    local str = "Message from Rigel:\n\n"
        .. "^x0000ffListen up young one and hear the tale of the "
        .. "overseers. Their desire to dominate is surpassed by their "
        .. "love of food. They like to eat yellow cake in fact. "
        .. "It gets all over their mouths. "
        .. "It even gets in their eyes! "
    game_journal.add_txt(lang, "YING_FOREST_SECRET_rigel", str)
    game_journal.add_path("@lore;@lore_random;@lore_random_rigel;{10}Overseers like yellow cake")

    p.trophy_locations()

    local str = "Message from Sirius B: \n\n"
        .. "^x0000ffThere has been a recent influx of \"adventurers\" "
        .. "being spawned into the Xar universe with the intent on getting our "
        .. "Keys to the Universe.\n\n"
        .. "Those privilege escalating dogs.\n\n"
        .. "With a few dirty hacks, I was able to restrict their spawning "
        .. "to Ying Worlds (contained within Ying Flowers). That should contain them.^!"
    game_journal.add_txt(lang, "YW_SHELL_ROOM_siriusb_1", str)
    game_journal.add_path("@lore;@lore_area;@lore_area_yw;{10}Spawning of adventurers;{10}Part 1")

    local str = "^x0000ffTo make my life more difficult, others have been labeling a "
        .. "path, which they call the \"^x00ff00Main Branch^!^x0000ff\" "
        .. "towards a recently discovered crop of ^x00ff00Inner Cores^!^x0000ff.\n\n"
        .. "I suppose we have SN1987A to blame for that."
    game_journal.add_txt(lang, "YW_SHELL_ROOM_siriusb_2", str)
    game_journal.add_path("@lore;@lore_area;@lore_area_yw;{10}Spawning of adventurers;{20}Part 2")

    game_journal.add_txt_cb(lang, "YW_SHELL_ROOM", p.YW_SHELL_ROOM)
    game_journal.add_path("@area;@area_yw;@area_yw_island;@area_yw_island_starting;{20}Small white flower")

    local str = "Remember also that you can change the difficulty "
        .. "any time by going to MAIN MENU -> OPTIONS -> "
        .. "PACKAGE TOP MENU -> DIFFICULTY. "
    game_journal.add_txt(lang, "YW_PLUG_change_difficulty", str)
    --Keeping it non-recordable (already in TUTORIAL_DIFF_1_overview).

    local str = "This is one of the big islands of the Ying World "
        .. "(but not the starting island). "
        .. "To get back to the starting island, enter a "
        .. "Ying World Gated Community and use the blue ring device inside.\n\n"
        .. "The Ying World has many green floating islands like this in it. \n\n"
        .. "The Ying World is but a bubble inside a flower, contained in a much larger "
        .. "universe called ^x00ff00Xar^!."
    game_journal.add_txt(lang, "YW_ISLAND_RESPAWN", str)
    game_journal.add_path("@area;@area_yw;@area_yw_island;@area_yw_island_big;{10}Getting back to starting island")
end

function p.YW_TOTEM_YING_FLOWER(chunk_id)
    --Ignoring chunk_id.
    local str = "A ^x00ff00Ying World^! exists within a ^x00ff00Ying Flower^!. "
        .. "A Ying Flower can be found in many places, "
        .. "but not within a Ying World itself. \n\n"
        .. "A Ying World is an good place to find "
        .. "^x00ff00Small Yellow Flowers^! "
    if not game_genesis.enabled() then str = str .. "(which contain upgrades to improve your Plasma weapon) " end
    str = str .."and ^x00ff00Small Cannon Pyramids^!"
    if not game_genesis.enabled() then str = str .. " (which contain upgrades to improve your Cannon weapon)" end
    str = str .. "."

    if not game_genesis.enabled() then
        str = str .. "\n\nTo escape a ying world, grow as large as you can and go "
            .."towards either the front, back, left, or right boundary of the world. "
    end
    return str
end

function p.YW_TOTEM_YELLOW_FLOWER(chunk_id)
    --Ignoring chunk_id.
    local str = "One place you can find ^x00ff00Small Yellow Flowers^! "
        .. "is growing on the branches of Ying Trees. "
        .. "^xff0000You will NOT, however, find them on the "
        .. "ground of a Ying Forest.^! \n\n"
        .. "If you go inside a Small "
        .. "Yellow Flower and descend "
        .. "through the dungeon, "
        .. "you will see "
        .. "Ying Trees growing on the sides of an "
        .. "inverted pyramid. At the bottom, you will find a gray cube. "
    if game_genesis.enabled() then str = str .. "This cube contains gold. "
    else str = str .. "The cube likely contains an upgrade to improve your Plasma weapon. "
    end
    return str
end

function p.YW_TOTEM_CANNON(chunk_id)
    --Ignoring chunk_id.
    local str = ""
    if game_genesis.enabled() then
        str = str .. "One place to find mazes is in ^x00ff00Small Cannon Pyramids^!. "
    else
        str = str .. "Upgrades to improve your Cannon weapon "
            .. "can be found in ^x00ff00Small Cannon Pyramids^!. "
    end
    str = str .. "These can be found on the various islands "
        .. "within the Ying World. "
        .. "You can see a Small Cannon "
        .. "Pyramid from the distance: "
        .. "each one looks like an orange block. "
    return str
end

function p.YW_TOTEM_ALT_BASE(chunk_id)
    --Ignoring chunk_id.
    local str = "It is wise to find a place with a respawn point next to a waypoint. "
        .. "A ^x00ff00Ying World Gated Community^! is such a place. "
        .. "This is an island surrounded by yellow electric fences. "
        .. "It can be found as one of the big islands in the Ying World.\n\n"
        .. "The island contains several Small Cannon Pyramids, "
        .. "as well as other amenities, "
        .. "including a library which talks about the Ying World.\n\n"
    if game_genesis.enabled() then
        str = str .. "To gain access to the village, you must get a key "
            .. "that is kept underneath the island. "
    else
        str = str .. "To gain access to the village, you must get a key by "
            .. "defeating a boss that lives underneath the island. "
    end
    return str
end

function p.trophy_locations()
    -- local str = "Here is where to find a list of all Ying World trophies: "
    --     .. "When you escape a Ying World by enlarging, you will find "
    --     .. "larger and larger \"shell\" rooms. "
    --     .. "At some point, you will find a shell room that contains a green "
    --     .. "island. On such an island, there is a room "
    --     .. "(that looks like a question mark) "
    --     .. "with a list of all Ying World trophies and where to find them. "
    -- game_journal.add_txt(lang, "YW_SHELL_ROOM_WP_trophy_list_room_location", str)
    -- game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{10}Location room location")

    local str = "There is a trophy for the ^x00ff00Ying World Library^!. "
        .. "Such a library can be found in a (Ying World) Gated Community. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_ying_lib", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{20}Ying world library")

    local str = "There is a trophy for ^x00ff00Noob Maze Flowers^!. "
        .. "You can find these in Ying Forests.  You can also find such a flower "
        .. "in a (Ying World) Gated Community. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_noob_maze_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{30}Noob maze")

    local str = "There is a trophy for ^x00ff00Small Yellow Flowers^!. "
        .. "You can find these in Ying Forests (not on the ground, but on "
        .. "the branches of the trees).  You can also find such flowers in a "
        .. "(Ying World) Gated Community. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_small_yellow_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{40}Small yellow flower")

    local str = "There is a trophy for ^x00ff00Jumbo Yellow Flowers^!. "
        .. "There is such a flower on the Green Island you are on now. "
        .. "Here is another place to find Jumbo Yellow Flowers: in the "
        .. "treasure rooms of Small Cannon Pyramids. "
        .. "A Small Cannon Pyramid that contains a Jumbo Yellow Flower "
        .. "has a yellow cube on top of the pyramid. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_jumbo_yellow_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{50}Jumbo yellow flower")

    local str = "There is a trophy for the ^x00ff00Layer 1 Ying Cave Treasure Rooms^!. "
        .. "A Ying Cave Island is a small green 3x3 island floating around the larger "
        .. "islands within a Ying World. In such an island, you can shrink and enter "
        .. "the caves in the top center. If you explore such caves, you can find a "
        .. "\"layer 1\" treasure room.\n\n"
        .. "Go into a Library in a Gated Community to read more about these islands. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_ying_cave_1", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{60}Ying cave 1")

    local str = "There is a trophy for the ^x00ff00Layer 2 Ying Cave Treasure Rooms^!. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_ying_cave_2", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{70}Ying cave 2")

    local str = "There is a trophy for the ^x00ff00Layer 3 Ying Cave Treasure Rooms^!. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_ying_cave_3", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{80}Ying cave 3")

    local str = "There is a trophy for the ^x00ff00Layer 4 Ying Cave Treasure Rooms^!. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_ying_cave_4", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{90}Ying cave 4")

    local str = "There is a trophy for ^x00ff00Small Cannon Pyramids^!. "
        .. "You can find such pyramids on the islands in the Ying World. "
        .. "For a distance, each one looks like an orange block. "
        .. "Note: you cannot find an Small Cannon Pyramid by shrinking into "
        .. "a Ying Forest and looking at either the trees or the ground.\n\n"
        .. "Note: You can find Small Cannon Pyramids inside a "
        .. "(Ying World) Gated Community.\n\n"
        .. "Note: Small Cannon Pyramids also appear in the small buildings "
        .. "inside Small Yellow Flowers. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_small_cannon_pyramid", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{100}Small cannon pyramid")

    local str = "There is a trophy for ^x00ff00Large Cannon Pyramids^!. "
        .. "These pyramids contain upgrades for your Railgun weapon.\n\n"
        .. "These are hard to find, although legend has it there is one "
        .. "inside each Jumbo Yellow Flower. You will need a hint in "
        .. "order to find one. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_large_cannon_pyramid", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{110}Large cannon pyramid")

    local str = "One way to exit a Ying World is via a ^x00ff007x7x7 maze^! with "
        .. "a pink ring device at the end. "
        .. "At the end of such a maze is a trophy.\n\n"
        .. "You can find such a maze on an island in the gray lattice "
        .. "that surrounds the large Ying World islands. "
        .. "For example, exit a Ying World Gated Community and shrink "
        .. "into the surrounding gray lattice.  You will find a small 3x3 island "
        .. "which contains one of these exit mazes. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_slow_exit", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{120}Slow exit maze")

    local str = "Every Ying World is contained in a ^x00ff00Ying Flower^!. "
        .. "If you escape a Ying World by enlarging, you will find "
        .. "yourself in such a flower.\n\n"
        .. "In the top room for such a flower, you will find a trophy."
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_ying_flower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{130}Ying flower")

    local str = "There is a trophy in Ying World Towers "
        .. "(^x00ff00Unremembered Towers^!). "
        .. "You can find these on the ground of the Ying Forest if you shrink "
        .. "into the ground at least 30 times. "
        .. "Note that as you shrink, the monsters in the air will change. "
        .. "This is how you can see that you are getting deeper. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_ying_tower", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{140}Ying tower")

    local str = "There is a trophy inside ^x00ff00Pure Menger Sponges^!. "
        .. "You can find these on the large islands within a Ying World. "
        .. "These sponges are visible from a distance. "
    game_journal.add_txt(lang, "BLOCK_TYPE_YW_SHELL_TROPHY_LIST_pure_sponge", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{150}Pure menger sponge")
end

function p.YW_SHELL_ROOM(chunk_id)
    --Ignoring chunk_id.
    local str = "^xff00ffA Ying Flower contains a Ying World, "
        .. "and that world has a ^xffffffSmall White Flower^!^xff00ff "
        .. "(right below the starting island). "
    if not game_genesis.enabled() then
        str = str .. "\n\nA Small White Flower is a great place to improve your health, "
            .. "but you have to be powerful enough before you can get the treasure. "
    end
    return str
end

-------------------------------------------------------------------------------
