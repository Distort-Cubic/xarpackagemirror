--File: game_journal_english_mylantis_top.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Below here is the ^x00ff00Mylantis Crust^!. "
        .. "This is one megachunk thick and it is filled "
        .. "with Science Cores. "
        .. "Hence, it is a great place to get "
        .. "EMP Max Ammo upgrades.\n\n"
        .. "It is a challenge to get to the bottom of the "
        .. "Crust, but once you do you will enter the main "
        .. "layers of Mylantis. "
        .. "Each layer is one megachunk thick. "
        .. "The deeper you go, the more treasure you find. "
        .. "In these layers there are libraries which "
        .. "explain more about the Mylantis Cave Layers."
    game_journal.add_txt(lang, "MYLANTIS_SURFACE_WP", str)
    game_journal.add_path("@area;@area_my;@area_my_caves;@area_my_caves_crust;{10}Overview")

    local str = "This is ^x00ff00Mylantis^!, "
        .. "the largest structure in the Xar universe. \n\n"
        .. "^x00ff00RejuvenX^! is mined here under the surface in the caves.\n\n"
        .. "There is some useful information in the 2 towers here at the top "
        .. "(and there are also some upgrades there).\n\n"
        .. "On the surface, there are three refineries "
        .. "(next to the three gray mountains). "
        .. "There are many more refineries below the surface. "
        .. "Their density increases as you get closer to the bottom. "
        .. "There are also Nuclear Silos under the surface, which hold "
        .. "many nukes.\n\n"
        .. "In the red top rooms of the hundreds of city buildings here, "
        .. "you can find very useful information."
    game_journal.add_txt(lang, "MYLANTIS_CITY_TOP_RESPAWN", str)
    game_journal.add_path("@area;@area_my;@area_my_city;{10}The planet mylantis overview")

    local str = "Right now you are in the ^x00ff00Mylantis Top Garden^!. "
        .. "This garden has quite a few Small White Flowers "
        .. "and also Jumbo Yellow Flowers.\n\n"
        .. "Directly below you is the Mylantis Top Garden Depot, "
        .. "which contains lots of treasure.\n\n"
        .. "Make sure you visit the Main Branch Library that is "
        .. "also on top of this garden as well as the tower beside it.\n\n"
        .. "In the center of this garden is a tunnel down into the "
        .. "Mylantis City Underground. "
        .. "However, you need a Key to the Universe to enter there."
    game_journal.add_txt(lang, "MYLANTIS_CITY_TOP_AMMO", str)
    game_journal.add_path("@area;@area_my;@area_my_city;{20}Top garden;{10}Overview")

    local str = "Message from Fornax A:\n\n"
        .. "^x0000ffThe Mylantis Council has mandated the labeling "
        .. "of a path from Mylantis to the deepest known depths "
        .. "of inner space: where one can find ^x00ff00Inner Cores^x0000ff. \n\n"
        .. "Actually, the scope of the project is even grander: "
        .. "they want the labeling of such a path starting from ANY suitable location. "
        .. "The council is calling these paths collectively "
        .. "\"^x00ff00The Main Branch^x0000ff\".^!"
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_SPICE_TOP_part1", str)
    game_journal.add_path("@lore;@lore_area;@lore_area_mb;{10}Starting from ANY suitable location")

    local str = "^x0000ffI (Fornax A) have been assigned to lead the operation "
        .. "of labeling the Main Branch.\n\n"
        .. "I have created two teams: \n\n"
        .. "The first will find suitable paths "
        .. "to SN1987A's recently constructed ^x00ff00Botany Lab^x0000ff. \n\n"
        .. "The second will explore and label the most promising specimen "
        .. "in this lab: the ^x00ff00Infinity Flower^x0000ff."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_SPICE_TOP_part2", str)
    game_journal.add_path("@lore;@lore_area;@lore_area_mb;{30}Main branch from the top garden;{10}Part 1")

    local str = "^x0000ffFrom the very top of the \"Top City of Mylantis\" "
        .. "(where you are now) the main branch is simple:\n\n"
        .. "Go to the ^x00ff00Orange^x0000ff that has been "
        .. "planted on the back right corner of the garden."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_SPICE_TOP_part3", str)
    game_journal.add_path("@lore;@lore_area;@lore_area_mb;{30}Main branch from the top garden;{20}Part 2")
    game_journal.add_path("@area;@area_my;@area_my_mb;{10}Starting from mylantis top garden")

    local str = "(Room 1/15) Message from Rigel:\n\n"
        .. "^x0000ffListen up young one and listen to the tale "
        .. "of when I was young myself!  I grew up on the streets of "
        .. "the Mylantis Top City, where you are now. "
        .. "Me and my main sequence friends used to play this game where "
        .. "we would see how large we could get. "
        .. "When we flew through ^x00ff00Outer Space Level 0^x0000ff "
        .. "we were indeed pretty big. "
        .. "But we discovered that we could get even larger!\n\n"
        .. "We were reckless then.  We didn't know the risks.  We managed to "
        .. "insert a Red Ring Device into the fabric of the Xar Universe "
        .. "which would allow us to grow one more time, "
        .. "and enter ^x00ff00Outer Space Level -1^x0000ff.\n\n"
        .. "We built this Red Ring Device next to one of the three mountains "
        .. "on the surface of Mylantis."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room1", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{10}Room 1/15: outer space level -1")

    local str = "(Room 2/15) Flying through ^x00ff00Outer Space Level 0^! can be quite lucrative. "
        .. "The isolated yellow chunks are actually ^x00ff00High Gold Asteroids^!, "
        .. "and they are great places to get gold.\n\n"
        .. "When you see two yellow chunks next to each other, one above the other, "
        .. "one of the two chunks will be a ^x00ff00Lockbox^!. "
        .. "A lockbox requires a ^xffff00Yellow Key^! to enter. \n\n"
        .. "There are two types of lockboxes in Outer Space Level 0. "
        .. "One of the two (the \"grand\" one) has the combination to the "
        .. "^xff00ffBurlington City Combination Lock^!."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room2", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{20}Room 2/15: outer space level 0")

    local str = "(Room 3/15) Message from Betelgeuse:\n\n"
        .. "^xff0000I'm not sure I can fully explain it, "
        .. "but I think the high pressure jobs and the overall urban lifestyle "
        .. "of the inhabitants of the Mylantis Top City breeds their fascination "
        .. "with Hell, and Hell related activities.\n\n"
        .. "For those in this counterculture who are interested, "
        .. "there is a club in this city that has a gate into hell.\n\n"
        .. "The club is called the ^x00ff00House of 5 Lampreys^xff0000.\n\n"
        .. "You can find the \"House of 5 Lampreys\" on the floor of the "
        .. "Mylantis Top City with "
        .. "7*7*8 buildings.  It is all the way on the right direction, "
        .. "and is 11 from the back direction. "
        .. "Said another way, it is at the grid location ^x00ff00U-11^xff0000.\n\n"
        .. "Make sure you know what you are getting yourself into."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room3", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{30}Room 3/15: house of 5 lampreys")

    local str = "(Room 4/15) The top of the Mylantis City Pyramid is the "
        .. "^x00ff00Mylantis Top Garden^!. "
        .. "In the center of the garden is a shaft down into the "
        .. "^xff00ffMylantis City Underground^!. "
        .. "However, you need a Key to the Universe to enter there."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room4", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{40}Room 4/15: mylantis city underground")

    local str = "(Room 5/15) Message from TON 618:\n\n"
        .. "^x0000ffI hacked into the code for a Red Maze Flower. "
        .. "These grow in I3, Group #3 of the Infinity Flower. "
        .. "I added a secret message into the treasure room there! "
        .. "I won't tell you what it says now, you just have to go there "
        .. "and read it yourself!  Hahaha!"
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room5", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{50}Room 5/15: red maze flowers")

    game_journal.add_txt_cb(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room6",
        p.MYLANTIS_CITY_BUILDING_RANDOM_TOP_room6)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{60}Room 6/15: laser genesis planet")

    game_journal.add_txt_cb(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room7",
        p.MYLANTIS_CITY_BUILDING_RANDOM_TOP_room7)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{70}Room 7/15: rejuvenx is underground")

    local str = "(Room 8/15) Message from Sagittarius A*:\n\n"
        .. "^x0000ffIn the underground caves of Mylantis, you can sometimes find "
        .. "\"Nuclear Arsenal\" that house many nukes. "
        .. "You enter one through a one way door, then you are in an ammo room, "
        .. "then there is an out-only waypoint.\n\n"
        .. "The challenge of using these structures is finding a waypoint nearby "
        .. "which you can teleport to in order to enter the arsenal and get the ammo.\n\n"
        .. "Finding an actual waypoint nearby in these caves is impractical."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room8", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{80}Room 8/15: nuclear arsenals")

    local str = "(Room 9/15) Message from Sagittarius A*:\n\n"
        .. "^x0000ffThe weed known as an ^x00ff00I3 WIG Flower^x0000ff has spread "
        .. "throughout the underground caves of Mylantis.\n\n"
        .. "These flowers provide a way to enter I3 (Group #3 of the Infinity Flower).\n\n"
        .. "One way to leave from inside a WIG flower is by using ^xff00ffPink Rings^!."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room9", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{90}Room 9/15: I3 wig flowers in the caves")

    local str = "(Room 10/15) Flying through ^x00ff00Outer Space Level 0^! can be peaceful.\n\n"
        .. "You can find ^xffff00Railgun Max Ammo^! upgrades floating in space there. ";
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room10", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{100}Room 10/15: railgun max ammo upgrades in space 0")

    local str = "(Room 11/15) Message from Arcturus:\n\n"
        .. "^x0000ffThe money is in the kids. What does every kid want from "
        .. "his or her sweetheart? Chocolate? No. A mix tape? Boring.\n\n"
        .. "Nothing says "
        .. "\"I love you\" like a miniature galaxy. "
        .. "I teamed up with an ex-inner botanist to graft a galaxy onto a flower. "
        .. "This \"Galaxy Flower\" is going to be a hot item. "
        .. "I am going to overload the universe with billboards for it!\n\n"
        .. "I am going to be even more rich! Haha! "
        .. "I am going to buy another house in the Mylantis Top City! "
        .. "I am a freakin genius!"
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room11", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{110}Room 11/15: I made the galaxy flower")

    local str = "(Room 12/15) Message from KY Cygni:\n\n"
        .. "^x0000ffThe truth is too much for some to believe. "
        .. "I know that our city is being delivered "
        .. "Inner Cores which have been mined throughout "
        .. "the multiverse. We process them here in our city "
        .. "and with our Re-Creation technology, we enrich "
        .. "our world.\n\n"
        .. "The fact that RejuvenX is mined on this planet is "
        .. "a distraction: I think RejuvenX comes from Re-Creation "
        .. "and therefore from Inner Cores."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room12", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{120}Room 12/15: rejuvenx comes from re-creation")

    local str = "(Room 13/15) Deep under the surface of Mylantis is the "
        .. "^x00ff00Great Mylantis Cavern^!. "
        .. "The only way to reach there is to fly through many layers of caves.\n\n"
        .. "One problem with making that voyage is the Mylantis Caves have a horrible "
        .. "rat infestation problem. You will want a huge number of nukes to deal "
        .. "with the rats."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room13", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{130}Room 13/15: great mylantis cavern")

    local str = "(Room 14/15) Message from KY Cygni:\n\n"
        .. "^x0000ffThe Bulk: the region of the multiverse between "
        .. "universes.\n\n"
        .. "Sometimes explorations do not require you to leave your "
        .. "room.  You can explore just sitting back in an arm chair "
        .. "and thinking."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room14", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{140}Room 14/15: enter the bulk in this room")

    local str = "(Room 15/15) Message from Sirius B:\n\n"
        .. "^x0000ffThe horror of self-replicating nanobots "
        .. "in the classical (flat) world is just the tip of the iceberg "
        .. "when it comes to the issues we face in the fractal block world.\n\n"
        .. "The fact that our universe has not been overrun by "
        .. "a self-replicating army is a testament to the clockwork "
        .. "of our universe.\n\n"
        .. "Perhaps it is the anthropic principle: "
        .. "since we exist here observing this universe, "
        .. "that doomsday scenario has not already happened and so "
        .. "I assume that scenario is unlikely to occur in the future."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room15_part1", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{150}Room 15/15: self-replicating nanobots;{10}Part 1")

    local str = "^x0000ffBut I say the heck with infinity.\n\n"
        .. "We do not need to be able to shrink to the size of 16^(-100) "
        .. "and beyond.\n\n"
        .. "Give me a flat world with a smallest level of detail.\n\n"
        .. "Just say NO to infinity."
    game_journal.add_txt(lang, "MYLANTIS_CITY_BUILDING_RANDOM_TOP_room15_part2", str)
    game_journal.add_path("@area;@area_my;@area_my_city;@area_my_city_room;{150}Room 15/15: self-replicating nanobots;{20}Part 2")
end

function p.MYLANTIS_CITY_BUILDING_RANDOM_TOP_room6(chunk_id)
    --Ignoring chunk_id.
    local str = "(Room 6/15) As is well known, "
        .. "Mylantis is the largest structure in the Xar Universe. "
        .. "However right next to Mylantis in the front direction is a planet called "
        .. "the ^x00ff00Laser Genesis Planet^!. "
        .. "There is only one of these in the Xar Universe.\n\n"
    if( not game_genesis.enabled() ) then
        str = str .. "In this planet, scientists have been working on improving the Laser weapon "
            .. "from a piece of junk to an instrument of destruction. "
            .. "The scientists have been using Re-Creation technology for this project.\n\n"
    end
    str = str .. "To gain access to the planet, you need a \"Laser Genesis Key\". "
        .. "These have been hidden well."
    return str
end

function p.MYLANTIS_CITY_BUILDING_RANDOM_TOP_room7(chunk_id)
    local str = "(Room 7/15) The planet Mylantis (where you are now) is the greatest source of "
        .. "RejuvenX in the universe.  There are 3 RejuvenX refineries on the surface "
        .. "of Mylantis; they are next to the 3 big mountains on the surface.\n\n"
    if( not game_genesis.enabled() ) then
        str = str .. "Each RejuvenX refinery has three inner layers: yellow, orange, and red. "
            .. "If you make your way to the inner most part, you will find a RejuvenX upgrade, "
            .. "which will increase the rate of your health regeneration up to the 200% level.\n\n"
    end
    str = str .. "The deeper you go into the Mylantis planet, the more you will find these "
        .. "RejuvenX refineries. "
        .. "That is, as your go lower from Layer 1 to Layer 2 to Layer 3 etc of Mylantis, "
        .. "you will find more RejuvenX refineries."
    return str
end

-------------------------------------------------------------------------------
