--File: game_journal_english_mid_richmond.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    -- local str = "^xff00ffThe waypoint room in the center of a "
    --     .. "Jumbo Yellow Flower is special.\n\n"
    --     .. "If you shrink, you can find a secret tunnel "
    --     .. "somewhere in the pyramid base, below the waypoint.^!"
    -- game_journal.add_txt(lang, "RICHMOND_SEWERS_5", str)
    --Use YW_SMALL_ISLAND_CAVE_TREASURE_2_hint instead.

    local str = "There are only 2 ways out of the ^x00ff00Tau Caves^!:\n\n"
        .. "1) going into inner space (follow the ^x00ff00Main Branch^!)\n\n"
        .. "2) going into outer space. "
    game_journal.add_txt(lang, "RICHMOND_TOP_INFO_2_two_ways_out", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{60}Tau caves map room;{10}Overview")
    
    game_journal.add_txt_cb(lang, "RICHMOND_TOP_INFO_2_inner_space1",
        p.RICHMOND_TOP_INFO_2_inner_space1)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{60}Tau caves map room;{20}Shrinking into inner space;{10}Part 1")

    local str = "When you shrink enough so you can enter a Yellow Cube "
        .. "(but you have not shrunk beyond this point), "
        .. "fly around inside the Yellow Cube until you find a "
        .. "^x00ff00Stoney Sanctuary^!.\n\n"
        .. "Inside such a sanctuary is a library that explains "
        .. "more about the Main Branch."
    game_journal.add_txt(lang, "RICHMOND_TOP_INFO_2_inner_space2", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{60}Tau caves map room;{20}Shrinking into inner space;{20}Part 2")

    local str = "To go into outer space (more precisely, getting "
        .. "large enough to leave the Tau Caves area), "
        .. "the standard way is to go to ^x00ff00Oak Trees^!.\n\n"
        .. "These are all throughout the Tau Caves.\n\n"
        .. "You approach one when it is a K-chunk "
        .. "(16x16x16 chunks) and go into the branch.\n\n"
        .. "Your goal is to go to the top "
        .. "although there is treasure at its bottom (which you can "
        .. "get to by going inside the trunk and going all the way "
        .. "down)."
    game_journal.add_txt(lang, "RICHMOND_TOP_INFO_2_outer_space1", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{60}Tau caves map room;{30}Growing into outer space;{10}Part 1")

    local str = "There is another way to grow out of the Tau Caves, "
        .. "but it requires you to be very powerful.\n\n"
        .. "Find a ^x00ff00Hard Pink Tree^! in the Tau Caves "
        .. "(it is in the same places that you can find Richmond Towns).\n\n"
        .. "If you can make it to the tree's center, you will find "
        .. "^xff00ffPink Rings^! which you can use to exit "
        .. "the Tau Caves."
    game_journal.add_txt(lang, "RICHMOND_TOP_INFO_2_outer_space2", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{60}Tau caves map room;{30}Growing into outer space;{20}Part 2")

    local str = "Some terminology: \n\n"
        .. "A ^x00ff00chunk^! is 16x16x16 Blocks. \n"
        .. "A ^x00ff00K-chunk^! is 16x16x16 chunks. (\"Kilochunk\") \n"
        .. "A ^x00ff00M-chunk^! is 16x16x16 K-chunks. (\"Megachunk\") \n"
        .. "A ^x00ff00G-chunk^! is 16x16x16 M-chunks. (\"Gigachunk\")"
    game_journal.add_txt(lang, "RICHMOND_TOP_INFO_2_chunk_terminology", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{60}Tau caves map room;{40}Some general terminology")
    game_journal.add_path("@area;@area_nav;{10}Kilochunks, megachunks, gigachunks")

    ---------------------------------------------

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I am experiencing pain from the "
        .. "transformation of my mind. "
        .. "An old star's consciousness felt my pain and "
        .. "took pity on me. "
        .. "It tried to show me the joy of creating something. "
        .. "It showed me a reagent that goes "
        .. "into the creation of the Fractal Block World. "
        .. "It insisted that I be totally clean "
        .. "so as to not contaminate the reagent. "
        .. "But I had a plan. "
        .. "Every day I would eat as many ^xff8800Oranges^x00ff00 as I could. "
        .. "I would save the seeds and put them in a box. "
        .. "Then one day when I had enough, "
        .. "when it was time to join the old star to "
        .. "be near the reagent, "
        .. "I filled my mouth with the seeds. "
        .. "The star could not see them because "
        .. "I thought hard about something else "
        .. "and the star's abilities were fading. "
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_5_k_1", str)
    game_journal.add_path("@lore;@lore_k_plight;{40}Messed up ramen;{10}Part 1")

    local str = "^x00ff00"
        .. "Then when I was close enough to the reagent, "
        .. "I spit all the seeds into the reagent!\n\n"
        .. "The star looked at me like I was crazy.\n\n"
        .. "Maybe all I actually accomplished was to mess up my ramen.\n\n"
        .. "Well, I hope that my little stunt will cause "
        .. "^xff8800Oranges^x00ff00 to grow throughout "
        .. "the Fractal Block World.\n\n"
        .. "Oranges are a great way to enter the Main Branch: "
        .. "the canonical path that descends into inner space. "
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_5_k_2", str)
    game_journal.add_path("@lore;@lore_k_plight;{40}Messed up ramen;{20}Part 2")

    ---------------------------------------------

    p.trophy_locations()

    p.homing_locations()
end

function p.RICHMOND_TOP_INFO_2_inner_space1(chunk_id)
    local str = "To go deeper into inner space (following the "
        .. "\"^x00ff00Main Branch^!\"), go into ^x00ff00Stoney Air^! "
        .. "and shrink enough times in order to enter the ^x00ff00Yellow Cubes^! "
        .. "(they have an X on them). "
        .. "The air within those Yellow Cubes is called "
        .. "^x00ff00Mossy Air^!."
    if( chunk_id >= 0 ) then --Weird.
        str = str .. "\n\n^xff00ffNote: this room "
        .. "is filled with Stoney Air. "
        .. "So you can start your descent into inner space "
        .. "(following the Main Branch) "
        .. "right here with the green ring device."
    end
    return str
end

function p.trophy_locations()
    local str = "There is a trophy in the penthouse of a ^x00ff00Richmond^! city."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_richmond", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{20}Richmond")

    local str = "There is a trophy in the sewers of a ^x00ff00Richmond^! city."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_richmond_sewers", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{30}Richmond sewers")

    local str = "Some of the buildings in a Richmond city have question mark "
        .. "cubes on top.  They are the ^x00ff00Tau Caves Map Rooms^!. "
        .. "There is a trophy in such rooms."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_tau_caves_map_room", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{40}Tau caves map room")

    local str = "You can find a trophy right here at the top of the "
        .. "^x00ff00Richmond Red Caves^!."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_richmond_red_caves", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{50}Richmond red caves")

    --

    local str = "You can find a trophy in the ^x00ff00cave^! formations in "
        .. "^x00ff00Stoney Air^!. ";
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_stoney_air_cave1", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{60}Stoney air cave 1")

    local str = "Some caves in Stoney Air contain a ^x00ff00secondary cave^! "
        .. "in their treasure rooms. "
        .. "There is a trophy in such secondary caves."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_stoney_air_cave2", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{70}Stoney air cave 2")

    local str = "Some secondary caves in Stoney Air contain a ^xff00fftertiary cave^! "
        .. "in their treasure rooms. "
        .. "There is a trophy in such tertiary caves."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_stoney_air_cave3", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{80}Stoney air cave 3")

    local str = "Stoney Air is filled with Yellow Cubes. "
        .. "When you shrink and are just small enough to enter a Yellow Cube, "
        .. "explore for a while (without shrinking). "
        .. "Soon you will find a ^x00ff00Stoney Sanctuary^!. "
        .. "There is a trophy in such a sanctuary. "
        .. "Note: these sanctuaries also contain libraries, which contain "
        .. "useful information about the Main Branch."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_yellow_cube", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{90}Stoney air yellow cube")
    
    --

    local str = "^x00ff00Blackberries^! are cultivated by the Monks of Stoney Sanctuaries. "
        .. "Blackberries can be found in the EMP Castles that appear in "
        .. "group #1 of the the Infinity Flower (I1). "
        .. "There is a trophy in the main treasure room of a Blackberry."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_blackberry", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{100}Blackberry")

    local str = "Inside a Yellow Cube (in Stoney Air) is air called Mossy Air. "
        .. "This air contains ^x00ff00Black Cubes^!. "
        .. "If you shrink and enter the walls of such a cube and make your "
        .. "way to the center, you will find a trophy. "
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_mossy_air_black_cube", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{110}Mossy air black cube")

    local str = "In Mossy Air there are islands. "
        .. "If you shrink at the surface, you can descend into the caves "
        .. "of these islands. "
        .. "At the bottom is a cavern. "
        .. "There are 3 types of caverns. "
        .. "One type has the city of ^x00ff00Jericho^! "
        .. "(with a trophy inside). "
        .. "Next to each Jericho city are Catacombs."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_jericho", str)
        game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{120}Jericho")

    local str = "There is a trophy in ^x00ff00Catacombs^!. "
        .. "These can be found next to Jericho cities, "
        .. "at the bottom of some caves in Mossy Air."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_catacombs", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{130}Catacombs")

    --

    local str = "There is a trophy at the center of an ^x00ff00Orange^!. "
        .. "You can find Oranges on the Black Cubes within Mossy Air. "
        .. "To reach the center of an orange, you must pass through its "
        .. "outer crust, outer mantle, inner crust, and inner mantle. "
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_orange", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{140}Orange")

    local str = "If you explore the Tau Caves, you will find "
        .. "that the air in some caves is actually "
        .. "^x00ff00Tweedle Dee^! Air. "
        .. "See the Tau Caves Map Room if you are not sure how to "
        .. "find this air. "
        .. "In this air you can find caves, and at their treasure room "
        .. "is a trophy. ";
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_tweed_cave", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{150}Tweedle cave")

    local str = "Every ^x00ff00Ice Cube^! contains a trophy."
        .. "Ice cubes can be found in Ice Moons, in Outer Space."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_ice_cube", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{160}Ice cube")

    local str = "If you enter an Orange, you will find many ^x00ff00Blue Bubbles^! "
        .. "inside its outer mantle.  If you enter a Blue Bubble you will find "
        .. "a large red room somewhere inside.  That room has a trophy."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_TROPHY_LIST_blue_bubble", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{170}Blue bubble")
end

function p.homing_locations()
    local str = "You can find ^x00ff00Homing Rocket Damage^! upgrades in many places. "
        .. "Here are some such locations:\n\n"
        .. "1) Small White Flowers, at the end of the maze\n\n"
        .. "2) Mossy Basements (in Mossy Islands, in Mossy Air)\n\n"
        .. "3) Demon Caves of Botany Labs\n\n"
        .. "4) Dungeons of Oak Trees\n\n"
        .. "5) Raspberries."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_INFO_LOCATIONS_damage", str)
    game_journal.add_path("@wep;@wep_homing;@wep_homing_loc;{20}Damage upgrades")

    local str = "You can find ^x00ff00Homing Rocket Max Ammo^! upgrades in several places. "
        .. "Here are some such locations:\n\n"
        .. "1) Dungeons of Oak Trees\n\n"
        .. "2) Demon Caves of Botany Labs\n\n"
        .. "3) Raspberries\n\n"
        .. "4) ^xff00ffDesert Cactuses^!."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_INFO_LOCATIONS_max_ammo", str)
    game_journal.add_path("@wep;@wep_homing;@wep_homing_loc;{30}Max ammo upgrades")

    local str = "^xff00ffHoming Velocity^! upgrades "
        .. "can be found in many places. "
        .. "Note: once you max out these upgrades, "
        .. "picking up one of these upgrades "
        .. "gives you at random a Homing Damage or Max Ammo upgrade. "
        .. "Many places where you can find Homing Fire Rate upgrades "
        .. "you can also find "
        .. "Homing Velocity upgrades, and vice versa. "
        .. "Here are some places you can find these Fire Rate upgrades:\n\n"
        .. "1) Small White Flowers, at the end of the maze\n\n"
        .. "2) Mossy Basements (in Mossy Islands, in Mossy Air)\n\n"
        .. "3) Dungeons of Oak Trees\n\n"
        .. "4) Demon Caves of Botany Labs\n\n"
        .. "5) Raspberries"
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_INFO_LOCATIONS_vel1", str)
    game_journal.add_path("@wep;@wep_homing;@wep_homing_loc;{40}Velocity upgrades;{10}Part 1")

    local str = "Here are some of the ^xff00ffbest^! places to find "
        .. "^x00ff00Homing Rocket Velocity^! upgrades:\n\n"
        .. "1) ^xff00ffRichmond Red Caves^! (Richmond buildings that are red at the top)\n\n"
        .. "2) ^xff00ffMylantis Red Caves^! (at the bottom of Mylantis)."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_INFO_LOCATIONS_vel2", str)
    game_journal.add_path("@wep;@wep_homing;@wep_homing_loc;{40}Velocity upgrades;{20}Best places")

    local str = "^x00ff00Homing Rocket Fire Rate^! upgrades can be found in many places. "
        .. "Note: once you max out these upgrades, picking up one of these upgrades "
        .. "gives you at random a Homing Damage or Max Ammo upgrade. "
        .. "Many places where you can find Homing Fire Rate upgrades you can also find "
        .. "Homing Velocity upgrades, and vice versa. "
        .. "Here are some places you can find these Fire Rate upgrades:\n\n"
        .. "1) Dungeons of Oak Trees\n\n"
        .. "2) Demon Caves of Botany Labs\n\n"
        .. "3) Raspberries."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_INFO_LOCATIONS_fire_rate1", str)
    game_journal.add_path("@wep;@wep_homing;@wep_homing_loc;{50}Fire rate upgrades;{10}Part 1")

    local str = "Here are some of the ^xff00ffbest^! places to find "
        .. "^x00ff00Homing Rocket Fire Rate^! upgrades:\n\n"
        .. "1) ^xff00ffRichmond Red Caves^! (Richmond buildings that are red at the top)\n\n"
        .. "2) ^xff00ffMylantis Red Caves^! (at the bottom of the Mylantis Caves)\n\n"
        .. "3) ^xff00ffAmethyst Mazes^! (in Mylantis Red Caves)."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_INFO_LOCATIONS_fire_rate2", str)
    game_journal.add_path("@wep;@wep_homing;@wep_homing_loc;{50}Fire rate upgrades;{20}Best places")

    local str = "There are many places to find ^x00ff00Homing Rocket ammo^! "
        .. "(homing rockets) "
        .. "in the world. Here are some such places:\n\n"
        .. "1) Small White Flowers\n\n"
        .. "2) Pirate Vines (in I2)."
    game_journal.add_txt(lang, "RICHMOND_TOP_HOMING_INFO_LOCATIONS_ammo", str)
    game_journal.add_path("@wep;@wep_homing;@wep_homing_loc;{60}Ammo")
end

-------------------------------------------------------------------------------
