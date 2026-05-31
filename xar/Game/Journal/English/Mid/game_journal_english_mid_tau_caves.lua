--File: game_journal_english_mid_tau_caves.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "You are in the ^x00ff00Tau Caves^!. "
        .. "In the Tau Caves, shrinking is easy, but growing is hard.\n\n"
        .. "You can only grow inside ^x00ff00Oak Trees^!.\n\n"
        .. "To learn the structure of the Tau caves, "
        .. "go into the caves and shrink a while."
    game_journal.add_txt(lang, "TAU_CAVES_TYPE_1_FINE_WP", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{10}Overview")

    local str = "You are in the ^x00ff00Tau Caves^!. "
        .. "If you have not already, you should visit a Richmond Town, "
        .. "which looks like a checkered block and is on the green growth "
        .. "just like this totem pole. In a Richmond Town is a map room "
        .. "of the Tau Caves.\n\n"
        .. "There are two places to go from here:\n\n"
        .. "1) You can shrink into the Yellow Cubes that are in "
        .. "\"Stoney Air\" that surrounds you. "
        .. "Those Yellow Cubes are part of the ^x00ff00Main Branch^!.\n\n"
        .. "2) You can grow, using Oak Trees. "
        .. "This is the standard way to grow in this place, "
        .. "however you can also grow using Hard Pink Trees. "
        .. "Those Hard Pink Trees require you to be extremely powerful."
    game_journal.add_txt(lang, "TAU_CAVES_TOTEM", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{20}Where to go from here")
    game_journal.add_path("@quest;@quest_mid;@quest_mid_find_richmond")
    game_journal.add_path("@quest;@quest_mid;@quest_mid_tau_shrink;{10}Version 1")
    game_journal.add_path("@quest;@quest_mid;@quest_mid_tau_grow")

    local str = "You are in the ^x00ff00Tau Caves Type 1 Coarse^!.\n\n"
        .. "If you have not already, you should shrink and enter "
        .. "a ^x00ff00Richmond Town^!.  You can find one by "
        .. "flying around now at the size you are currently. "
        .. "A Richmond Town looks like a black and white checkered block "
        .. "with the word Richmond written on the side in red letters.\n\n"
        .. "You can shrink in one of the Green Shrink Boxes."
    game_journal.add_txt(lang, "TAU_CAVE_LAYER_1_MOLD", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{30}Tau caves type 1")

    local str = "You are in ^x00ff00Type 2 Tau Caves^!. \n\n"
        .. "If you have not already, you should visit a city "
        .. "called ^x00ff00Richmond^!. "
        .. "You can find it within Type 1 Tau Caves. "
        .. "From a distance, it looks like a black and "
        .. "white checkered cube above an orange cube. \n\n"
        .. "In general, checkered cubes represent towns or places to buy/sell.\n\n"
        .. "In Type 1 Tau Caves, there are \"country stores\" which looks like "
        .. "red checkered cubes.\n\n"
        .. "There is also a waypoint which from a distance "
        .. "looks like a blue checkered block. "
        .. "Do not get this confused with the Richmond "
        .. "black and white checkered block."
    game_journal.add_txt(lang, "TAU_CAVE_LAYER_2_CAVE", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{40}Tau caves type 2")

    local str = "You are in ^x00ff00Type 3 Tau Caves^!. \n\n"
        .. "If you have not already, you should visit a city "
        .. "called ^x00ff00Richmond^!. You can find it within Type 1 Tau Caves. "
        .. "From a distance, it looks like a black and white "
        .. "checkered cube above an orange cube. \n\n"
        .. "In general, checkered cubes represent towns or places to buy/sell.\n\n"
        .. "In Type 1 Tau Caves, there is \"country store\" which looks like "
        .. "a red checker block.\n\n"
        .. "There is also a waypoint which from a distance "
        .. "looks like a blue checkered block. "
        .. "Do not get this confused with the "
        .. "Richmond black and white checkered block."
    game_journal.add_txt(lang, "TAU_CAVE_LAYER_3_CAVE", str)
    game_journal.add_path("@area;@area_mid;@area_mid_tau;{50}Tau caves type 3")
end

-------------------------------------------------------------------------------
