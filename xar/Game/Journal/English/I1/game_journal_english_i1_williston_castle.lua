--File: game_journal_english_i1_williston_castle.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Although I still want to be saved from the Fractal Block World, "
        .. "I am starting to get attached to it. When I communicate with others, "
        .. "in addition to the observable "
        .. "data that is being transmitted "
        .. "(the primary data), I can "
        .. "perceive secondary \"metadata\" that is also being transmitted. "
        .. "I think this is what people call ESP. "
        .. "This metadata interacts with the secondary part of my mind, which is fractal-like "
        .. "and prior to this point was hidden from my consciousness.\n\n"
        .. "It is as if there was this entire secondary world that was existing on top "
        .. "of ordinary reality. And beyond this secondary world, I imagine there is "
        .. "a tertiary world, and so on."
    game_journal.add_txt(lang, "WILLISTON_CASTLE_TREASURE_k_part1", str)
    game_journal.add_path("@lore;@lore_k_hidden;@lore_k_hidden_esp;{10}EMP Castle;{10}Part 1")

    local str = "^x00ff00I am learning how to interact with this secondary world. "
        .. "I got here by accident, but now it feels like going deeper requires "
        .. "a higher security clearance. "
        .. "Sometimes seemingly ordinary conversations "
        .. "with other people have this tone (in my mind) "
        .. "of a teacher giving me an exam. "
        .. "If I pass the exam, I am closer to getting my next security clearance.\n\n"
        .. "But these exams do not sound like they are about the fractal block world: "
        .. "they sound like they are about being logical and only accepting "
        .. "evidence from the primary world. "
        .. "It is like security clearance to the deeper worlds is only given "
        .. "once you demonstrate that your primary logical core is resistant "
        .. "to attacks from the secondary, tertiary, and so on worlds."
    game_journal.add_txt(lang, "WILLISTON_CASTLE_TREASURE_k_part2", str)
    game_journal.add_path("@lore;@lore_k_hidden;@lore_k_hidden_esp;{10}EMP Castle;{20}Part 2")

    local str = "^x00ff00Let me just point out that it is plausible "
        .. "that the progression from the primary world to the secondary world "
        .. "to the tertiary world and so on eventually terminates once "
        .. "\"The Ultimate Inner Core\" of the universe is revealed. "
        .. "This is because that core is necessary and sufficient for "
        .. "the creation of the ENTIRE universe.\n\n"
        .. "But I think not everyone feels this way. "
        .. "Some feel that the primary world has its own inner core, "
        .. "the secondary world has its own inner core "
        .. "(stronger than the primary one) and so on "
        .. "without there ever being an ultimate core of the universe."
    game_journal.add_txt(lang, "WILLISTON_CASTLE_TREASURE_k_part3", str)
    game_journal.add_path("@lore;@lore_k_hidden;@lore_k_hidden_esp;{10}EMP Castle;{30}Part 3")

    local str = "Message from NGC 1277:\n\n"
        .. "^x0000ffMy conclusion upon investigating this region "
        .. "of inner space is that Infinity Flowers are broken "
        .. "into three pieces: Group 1, 2, and 3.\n\n"
        .. "Escaping Group 1 is easy, escaping Group 2 is more challenging, "
        .. "and escaping Group 3 seems to be very difficult. \n\n"
        .. "I have not found an Inner Core in either "
        .. "Group 1 or 2, so if there is one "
        .. "in an Infinity Flower, it would probably be in Group 3."
    game_journal.add_txt(lang, "WILLISTON_CASTLE_TREASURE_group123", str)
    game_journal.add_path("@area;@area_i1;@area_i1_inf;{20}Escaping can get harder")
    game_journal.add_path("@area;@area_i1;@area_i1_inf;{30}An inner core would probably only be in I3")

    local str = "Message from Sagittarius A*:\n\n"
        .. "^x0000ffThis is ^x00ff00Zubeneschamali Castle^!^x0000ff.\n\n"
        .. "Some travelers go through the Sagittarius and then the "
        .. "Scorpius portal to reach this room.\n\n"
        .. "It is amazing how much we have advanced the field of Inner Botany Theory. "
        .. "And to think, not too long ago we first constructed the cities of "
        .. "Williston in this I1 area.\n\n"
        .. "I want to know what is in my core. ";
    game_journal.add_txt(lang, "WILLISTON_ZUBE_CASTLE_TREASURE", str)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_field;@area_i1_wil_field_zube;{20}Sagittarius and scorpius portals")
end

-------------------------------------------------------------------------------
