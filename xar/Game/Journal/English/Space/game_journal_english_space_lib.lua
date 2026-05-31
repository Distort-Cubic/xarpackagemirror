--File: game_journal_english_space_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "In outer space you can find ^x00ff00Moons^!. "
        .. "Moons that you can fully interact with "
        .. "when they are K-chunks are sometimes called "
        .. "^x00ff00Moonlettes.^! "
        .. "On the other hand, you typically interact with normal moons "
        .. "when they are M-chunks.\n\n"
        .. "There are many types of moons, which we will list now."
    game_journal.add_txt(lang, "SPACE_LIBRARY_MOONS_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{10}Moons;{10}Overview")

    game_journal.add_txt_cb(lang, "SPACE_LIBRARY_MOONS_part1",
        p.SPACE_LIBRARY_MOONS_part1)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{10}Moons;{20}Part 1")

    game_journal.add_txt_cb(lang, "SPACE_LIBRARY_MOONS_part2",
        p.SPACE_LIBRARY_MOONS_part2)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{10}Moons;{30}Part 2")

    game_journal.add_txt_cb(lang, "SPACE_LIBRARY_MOONS_part3",
        p.SPACE_LIBRARY_MOONS_part3)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{10}Moons;{40}Part 3")

    game_journal.add_txt_cb(lang, "SPACE_LIBRARY_DEBRIS_part1",
        p.SPACE_LIBRARY_DEBRIS_part1)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{20}Debris;{10}Part 1")

    game_journal.add_txt_cb(lang, "SPACE_LIBRARY_DEBRIS_part2",
        p.SPACE_LIBRARY_DEBRIS_part2)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{20}Debris;{20}Part 2")

    game_journal.add_txt_cb(lang, "SPACE_LIBRARY_DEBRIS_part3",
        p.SPACE_LIBRARY_DEBRIS_part3)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{20}Debris;{30}Part 3")

    local str = "There are ^x00ff00Planets.^! "
        .. "Planets have a random number of moons surrounding them. "
        .. "You can find planets next to suns "
        .. "(suns have random numbers of planets around them).\n\n"
        .. "When you are on a planet, staying the same size and traveling "
        .. "to a nearby planet around the same sun can be tedious. "
        .. "However, on the surface of a planet you can grow one size "
        .. "(for 250 gold) "
        .. "and then fly over to the other planet. "
        .. "Once you reach the destination planet, "
        .. "you can shrink using green rings below the planet "
        .. "(for another 250 gold)."
    game_journal.add_txt(lang, "SPACE_LIBRARY_PLANETS_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{30}Planets;{10}Overview")

    game_journal.add_txt_cb(lang, "SPACE_LIBRARY_PLANETS_part1",
        p.SPACE_LIBRARY_PLANETS_part1)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{30}Planets;{20}Part 1")

    game_journal.add_txt_cb(lang, "SPACE_LIBRARY_SUNS",
        p.SPACE_LIBRARY_SUNS)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{40}Suns;{10}Overview")

    local str = "At the center of every galaxy is a "
        .. "^x00ff00Supermassive Black Hole^!."
    game_journal.add_txt(lang, "SPACE_LIBRARY_BIG_BLACK_HOLES", str)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{50}Supermassive black hole;{10}Overview")

    local str = "A ^x00ff00Galaxy^! looks like a black cube from a distance. "
        .. "It has a supermassive black hole in its center. "
        .. "Stars surround the black hole in a plane.\n\n"
        .. "To explore a galaxy starting from the outside, "
        .. "you shrink at one of the 4 vertical edges "
        .. "enough times so that you can fly over and "
        .. "enter one of the planets.\n\n"
        .. "If you are inside a galaxy and want to leave it, "
        .. "next to suns are ^x00ff00Solar System Elevators^!. "
        .. "These allow you to grow large enough so that it only takes "
        .. "a few seconds to fly out of the galaxy."
    game_journal.add_txt(lang, "SPACE_LIBRARY_GALAXIES_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{60}Galaxy;{10}Part 1")

    local str = "If a galaxy is in \"standard outer space\", then "
        .. "when you leave from it, you can easily grow until "
        .. "you are in ^x00ff00Outer Space Level 2^!. "
        .. "That area is described nearby in this library.\n\n"
        .. "Some galaxies are in strange places. "
        .. "For example, every ^x00ff00Galaxy Flower^! "
        .. "has a galaxy at its top. "
        .. "There is a picture of a Galaxy Flower here. ";
    game_journal.add_txt(lang, "SPACE_LIBRARY_GALAXIES_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{60}Galaxy;{20}Part 2")

    local str = "If you are in a galaxy that is in standard outer space "
        .. "and then you leave from it, you will be in a certain area. "
        .. "In this area, it will be very easy to grow until you are in "
        .. "^x00ff00Outer Space Level 2^!.\n\n"
        .. "In this area, there are ^x00ff00Alpha Menger Sponges^!, "
        .. "which are fun to explore, "
        .. "^xff00ffand are EXCELLENT places to improve your Nuke^!.\n\n"
        .. "In Outer Space Level 2, you can see lots of Galaxies. "
        .. "They cluster together into \"filaments\". "
        .. "The regions between filaments are called \"voids\". "
    game_journal.add_txt(lang, "SPACE_LIBRARY_OUTER_SPACE_2_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{70}Outer space level 2;{10}Part 1")

    local str = "To enlarge out of Outer Space Level 2, "
        .. "you need to fly over to a giant (K-chunk) red block "
        .. "with a \"1\" one it. "
        .. "See the picture. "
    game_journal.add_txt(lang, "SPACE_LIBRARY_OUTER_SPACE_2_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{70}Outer space level 2;{20}Part 2")

    local str = "When you are in Outer Space Level 1, "
        .. "it is relatively easy to fly over to "
        .. "^x00ff00Medium Gold Asteroids^!. "
        .. "You can find a good amount of gold there.\n\n"
        .. "There are bunkers where you can hide. "
        .. "To enlarge out of Outer Space Level 1, "
        .. "you need to fly over to a K-chunk that is "
        .. "red with a \"0\" on it. "
    game_journal.add_txt(lang, "SPACE_LIBRARY_OUTER_SPACE_1_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{80}Outer space level 1;{10}Part 1")

    game_journal.add_txt_cb(lang, "SPACE_LIBRARY_OUTER_SPACE_0_part1",
        p.SPACE_LIBRARY_OUTER_SPACE_0_part1)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{90}Outer space level 0;{10}Overview")

    local str = "Hopefully, you should be able to see ^x00ff00Mylantis^!, "
        .. "which looks like an orange block with an \"M\" on it. "
        .. "If you can see it when you are in Outer Space Level 0, "
        .. "then it will not take long to fly over to it.\n\n"
        .. "Mylantis has a truly massive cave system under its surface. "
        .. "And, there is an important city on the surface. "
        .. "Some say that it is \"the center of the universe\"."
    game_journal.add_txt(lang, "SPACE_LIBRARY_OUTER_SPACE_0_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_space;{90}Outer space level 0;{20}Mylantis")

    p.trophy_locations()
end

function p.SPACE_LIBRARY_MOONS_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "1) ^x00ff00Alpha Moons^! are moonlettes with a small amount of "
        .. "treasure in a cave that is somewhere inside of them. "
        .. "Their treasure room always includes a ^xff00ffNuke Radius^! upgrade.\n\n";
    if( game_genesis.enabled() ) then
        str = str .. "2) ^x00ff00Beta Moons^! are moonlettes and have a 5x5x5 maze.\n\n"
            .. "3) ^x00ff00Gamma Moons^!."
    else
        str = str .. "2) ^x00ff00Beta Moons^! are moonlettes and have a 5x5x5 maze with "
            .. "dark hole upgrades in their treasure room.\n\n"
            .. "3) ^x00ff00Gamma Moons^! have lots of Laser upgrades scattered "
            .. "under their surface. They have nuke upgrades in their core. "
            .. "At their very center they have lots of nukes and a few "
            .. "Rocket upgrades. "
            .. "The nukes are next to a one-way waypoint, so you can teleport there, "
            .."take the nukes, then go to the surface to exit."
    end
    return str
end

function p.SPACE_LIBRARY_MOONS_part2(chunk_id)
    --Ignoring chunk_id.
    local str = "4) ^x00ff00Tau Moons^!, also called Tau Cave Moons, "
        .. "are moons that have Tau Caves inside them. "
        .. "Note that Tau Caves contain Ying Flowers, "
        .. "which is where many adventures spawn.\n\n"
    str = str .. "5) ^x00ff00Ice Moons^! are similar to Gamma Moons."
    if( not game_genesis.enabled() ) then
        str = str .. "However you can shrink in their caves and find lots of Laser ammo. "
    end
    str = str .. "What gives these moons their name is that they contain many "
        .. "Ice Cubes. Note that the core of an Ice Cube contains Blue Bubbles."
    return str
end

function p.SPACE_LIBRARY_MOONS_part3(chunk_id)
    --Ignoring chunk_id.
    local str = ""
    if( game_genesis.enabled() ) then
         str = str .. "6) ^x00ff00Fire Rate Moons^! have giant shafts beneath "
            .. "their surface that you can use to descend into the moon's core.\n\n";
    else
        str = str .. "6) ^x00ff00Fire Rate Moons^! are some of the most rare moons. "
            .. "If you go beneath their surface and descend their shafts all the way, "
            .. "you enter a cavern with a boss. If you defeat the boss, then you get "
            .. "one upgrade to increase your Plasma fire rate, and one upgrade to increase "
            .."your Rocket fire rate. Both of these upgrades are very rare.\n\n";
    end
    str = str .. "7) ^x00ff00Blue Ring Station^!. This has a blue ring device "
        .. "at the bottom of a very long shaft. "
        .. "These blue rings will take you out of the galaxy containing the moon. "
        .. "If the galaxy is in \"standard outer space\", then using the "
        .. "blue ring device will teleport you to ^x00ff00Mylantis^!. "
        .. "This justifies the station's other name: ^x00ff00Mylantis Customs^!. "
        .. "We cannot say what will happen if you use the blue rings "
        .. "when the galaxy is NOT in standard outer space.\n\n"
        .. "8) ^x00ff00Library Moons^! have a library for outer space. "
        .. "You are in one now."
    return str
end

function p.SPACE_LIBRARY_DEBRIS_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "Surrounding moons (and planets) "
        .. "are ^x00ff00blue cubes^! (^x00ff00Debris^!). ";
    if( not game_genesis.enabled() ) then
        str = str .. "Each has a large Laser ammo box in it."
    end
    str = str .. "\n\nThere are two other types of debris.";
    return str
end

function p.SPACE_LIBRARY_DEBRIS_part2(chunk_id)
    --Ignoring chunk_id.
    local str = "Between the planets of a solar system "
        .. "are ^x00ff00orange cubes^! (debris). ";
    if( not game_genesis.enabled() ) then
        str = str .. "Each has a Laser Damage upgrade in it. "
    end
    str = str .. "You can sometimes find ^x00ff00Richmond^! cities in one."
    return str
end

function p.SPACE_LIBRARY_DEBRIS_part3(chunk_id)
    --Ignoring chunk_id.
    local str = "When you travel from one sun to another, "
        .. "in between you can find ^x00ff00gray cubes^! (debris). ";
    if( not game_genesis.enabled() ) then
        str = str .. "Each has a Rocket Damage upgrade in it. "
    end
    str = str .. "You can sometimes find ^xff00ffJericho^! cities in one."
    return str
end

function p.SPACE_LIBRARY_PLANETS_part1(chunk_id)
    local str = "There are a few types of planets, which we will list now.\n\n"
        .. "^x00ff00Small Minigun Planets^! "
        .. "have a cave system below their surface. "
    if( not game_genesis.enabled() ) then
        str = str .. "The caves can be a great place to "
            .. "collect rockets. "
    end
    str = str .. "If you reach the bottom of the caves, you "
        .. "enter a giant cavern. "
    if( not game_genesis.enabled() ) then
        str = str .. "There is treasure at the center to improve your "
            .. "Minigun weapon. "
    end
    str = str .. "\n\n^x00ff00Clay Planets^! have a huge maze underground. "
        .. "It is many 7x7x7 smaller mazes, "
        .. "where two adjacent such mazes are connected by 4 corridors. "
        .. "If you get stuck, you can shrink and fly through the walls, "
        .. "but it is slower. "
        .. "If you reach the bottom, there is a huge cavern with "
        .. "significant treasure."
    return str
end

function p.SPACE_LIBRARY_SUNS(chunk_id)
    --Ignoring chunk_id.
    local str = "If you are small enough, you can enter a ^x00ff00Sun^!. "
        .. "If you reach its core, you will find an Infinity Flower. "
    if( not game_genesis.enabled() ) then
        str = str .. "Also in the core is a quite large number of Rocket upgrades. "
    end
    return str
end

function p.SPACE_LIBRARY_OUTER_SPACE_0_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "^x00ff00Outer Space Level 0^! is serene. "
    if( not game_genesis.enabled() ) then
        str = str .. "You can find Railgun upgrades floating in this area. "
    end
    str = str .. "In this area, it is relatively easy to fly to "
        .. "^x00ff00High Gold Asteroids^!, which are fantastic places for "
        .. "getting gold. "
    return str
end

function p.trophy_locations()
    local str = "There is a trophy in the ^x00ff00Space Library^!. "
        .. "The trophy is in the top room by the waypoint."
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_space_lib", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{20}Space library")

    local str = "There is a trophy in the center of each ^x00ff00Alpha Moon^!. "
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_moon_alpha", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{30}Alpha moon")

    local str = "There is a trophy in the center of each ^x00ff00Beta Moon^!. "
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_moon_beta", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{40}Beta moon")

    local str = "There is a trophy in the center of each ^x00ff00Gamma Moon^!. "
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_moon_gamma", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{50}Gamma moon")

    local str = "There is a trophy in the center of each ^x00ff00Tau Moon^! "
        .. "(Tau Caves Moon)."
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_moon_tau", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{60}Tau moon")

    local str = "There is a trophy in the center of each ^x00ff00Ice Moon^!."
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_moon_ice", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{70}Ice moon")

    local str = "There is a trophy in the center of each ^x00ff00Fire Rate Moon^!."
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_moon_fire_rate", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{80}Fire rate moon")

    local str = "There is a trophy in the center of each ^x00ff00Small Minigun Planet^!."
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_planet_small_minigun", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{90}Small minigun planet")

    local str = "There is a trophy in the center of each ^x00ff00Clay Planet^!."
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_planet_clay", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{100}Clay planet")

    local str = "There is a trophy inside each ^x00ff00Sun^! "
        .. "(which are at the center of solar systems)."
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_sun", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{110}Sun")

    local str = "There is a trophy in each ^x00ff00Supermassive Black Hole^!. "
        .. "You can find these at the center of Galaxies."
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_black_hole_big", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{120}Supermassive Black Hole")

    local str = "There is a trophy in each ^x00ff00Alpha Menger Sponge^!."
    game_journal.add_txt(lang, "SPACE_LIBRARY_TROPHY_LIST_sponge_alpha", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{130}Alpha menger sponge")
end

-------------------------------------------------------------------------------
