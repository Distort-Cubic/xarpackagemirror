--File: game_journal_english_mid_stoney_sanctuary.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Some places to find Rocket upgrades:\n\n"
        .. "1) Yellow Rooms inside Blue Bubbles (various upgrades)\n"
        .. "2) Yellow Bee Cubes inside Mossy Air (3 Damage)\n"
        .. "3) Jericho, inside a Mossy Island (various upgrades)\n"
        .. "4) Stoney Sanctuaries (4 types)\n"
        .. "5) Top of apple trees (2 Max Ammo)\n"
        .. "6) Yellow Cubes in an Orange Outer Mantle (Velocity)\n"
        .. "7) Top of buildings in Williston (Velocity)\n"
        .. "8) Blackberries (6 radius)"
    game_journal.add_txt(lang, "STONEY_CHURCH_TREASURE_2_rocket", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_loc;{20}Various upgrades")

    local str = "This is a ^x00ff00Stoney Sanctuary^!, which is part of "
        .. "the ^x00ff00Main Branch^!. "
        .. "The Main Branch is the canonical path to "
        .. "the depths of inner space which contain Inner Cores.\n\n"
        .. "To continue down the main branch, go outside this sanctuary into "
        .. "the air that surrounds with black cubes.  Shrink and go to "
        .. "the sides of such a black cube and find an ^x00ff00Orange^!."
    game_journal.add_txt(lang, "STONEY_CHURCH_TREASURE_2_main_branch", str)
    game_journal.add_path("@area;@area_mid;@area_mid_mb;{40}Stoney sanctuary to mossy air to orange")
    
    local str = "Going to a ^x00ff00Stoney Sanctuary^! such as this should not be a chore. "
        .. "A smart idea is to go to one of these sanctuaries "
        .. "while you are on the way to something else.\n\n"
        .. "For example, one way to exit Group #2 of the "
        .. "Infinity Flower (I2) is to shrink "
        .. "into Stoney Air, enter a Yellow Cube, and then go the waypoint "
        .. "next to one of these Stoney Sanctuaries.\n\n"
        .. "When you pass by one of these Stoney Sanctuaries, "
        .. "come inside and get some Rocket upgrades!"
    game_journal.add_txt(lang, "STONEY_CHURCH_TREASURE_2_chore", str)
    game_journal.add_path("@area;@area_mid;@area_mid_stoney;@area_mid_stoney_san;{10}Going here should not be a chore")

    local str = "Some of the monks here dream of "
        .. "growing out of the Tau Caves. "
        .. "They are free to choose their own path. "
        .. "We help them on their way by putting 28 "
        .. "Rocket Radius upgrades at the top of this tower. "
        .. "^xff00ffHaving a total of at least 5 Rocket Radius upgrades "
        .. "is useful for enlarging using Oak Trees.^!\n\n"
        .. "However, to prove the commitment of monks, they must "
        .. "pass through the 3 6x6x6 mazes of this tower. "
        .. "^xff0000This could take a LONG time.^!\n\n"
        .. "^xff00ffA much more well rounded way to get 5 Rocket Radius upgrades "
        .. "is to get the main treasure from 5 Stoney Sanctuaries such as this.^! "
        .. "^x0000ffDo you think there is a waypoint "
        .. "next to the yellow cube you are in now?"
    game_journal.add_txt(lang, "STONEY_CHURCH_MAZE_ENTRANCE_part1", str)
    game_journal.add_path("@area;@area_mid;@area_mid_stoney;@area_mid_stoney_san;{20}Tower maze")

    local str = "^x0000ffSagittarius A*^!^xff00ff told us a secret about "
        .. "^x00ff00WIG Flowers^!^xff00ff, which are of interest in the field "
        .. "of Inner Botany Theory.\n\n"
        .. "We wrote the message down and stored it in the tower above "
        .. "(after a 6x6x6 maze)."
    game_journal.add_txt(lang, "STONEY_CHURCH_MAZE_ENTRANCE_part2", str)
    game_journal.add_path("@area;@area_mid;@area_mid_stoney;@area_mid_stoney_san;{30}The message in our tower;{10}Overview")

    local str = "The message that Sagittarius A* delivered to our sanctuary:\n\n"
        .. "^x0000ffWIG Flowers have Pink Spheres on them and also usually "
        .. "contain a fragment of the Infinity Flower.\n\n"
        .. "^x00ff00WIG stands for \"Williston In Gadget\".^x0000ff "
        .. "That is, you enter the WIG Flower by shrinking and going into the "
        .. "Infinity Flower fragment. "
        .. "If you enter into Group #2 (I2), then you want to continue "
        .. "to shrink into Group #1 (I1) "
        .. "without passing by a Pink Sphere.  Then you activate a waypoint in "
        .. "a Williston City.  Then later, you can teleport back to that waypoint, "
        .. "and then travel nearby to find Pink Rings (which are probably inside "
        .. "a Pink Tree). When you touch the Pink Rings, you are teleported so that "
        .. "you are the size of the WIG Flower.\n\n"
        .. "There you have it: a \"Williston In Gadget\"."
    game_journal.add_txt(lang, "STONEY_CHURCH_WIG_CHUNK", str)
    game_journal.add_path("@area;@area_mid;@area_mid_stoney;@area_mid_stoney_san;{30}The message in our tower;{20}The message itself")

    local str = "Remember that you drop a short term marker by tapping the M key, "
        .. "and you can drop a ^x00ff00long term marker^! by holding the M key for "
        .. "one second.\n\n"
        .. "If you look at a long term marker and press F, "
        .. "you can write a message on the marker. "
        .. "However long term markers have another very useful property:\n\n"
        .. "^xff00ffYou can see long term markers from a "
        .. "greater distance than short term markers. "
        .. "Also, you can still see a long term marker even when you "
        .. "grow one time.^!\n\n"
        .. "Try experimenting."
    game_journal.add_txt(lang, "STONEY_CHURCH_MARKER_INFO", str)
    game_journal.add_path("@basic;@basic_marker;{30}Writing a message in a long marker")
    game_journal.add_path("@basic;@basic_marker;{40}Long markers can be seen from a distance")
end

-------------------------------------------------------------------------------
