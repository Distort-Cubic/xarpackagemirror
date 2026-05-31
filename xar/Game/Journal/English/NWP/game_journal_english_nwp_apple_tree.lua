--File: game_journal_english_nwp_apple_tree.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "An ^x00ff00Apple Tree^! (which you are in now) is part of "
        .. "the \"No Waypoint\" area of the world "
        .. "(because it contains no waypoints inside).\n\n"
        .. "The list of all \"No Waypoint\" Trophies and "
        .. "where to find them is located in each ^x00ff00Jericho^! Town. "
        .. "You can find Jericho Towns inside Mossy Islands which are "
        .. "inside Mossy Air."
    game_journal.add_txt(lang, "APPLE_TREE_APPLE_nwp_trophy_room", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_nwp;{10}Location room location;{20}Version 2")
    
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Why do I need you to save me, instead of "
        .. "someone or something else saving me? "
        .. "I don't trust the people I work with "
        .. "(am I being paranoid)?\n\n"
        .. "I trust you because of our history. "
        .. "Maybe with your new job (whatever it really is) "
        .. "you have developed the skills to navigate this "
        .. "labyrinth and find a Key to the Universe."
    game_journal.add_txt(lang, "APPLE_TREE_APPLE_RED_2_k_part1", str)
    game_journal.add_path("@lore;@lore_k_hidden;{20}Why you can help me;{10}Part 1")

    local str = "^x00ff00I am hoping that you still have the will to "
        .. "save me. This hidden world is at best neutral, "
        .. "and at worst devastating. "
        .. "This world doesn't care about me. "
        .. "Even the monsters that shoot don't seem to have emotion. "
        .. "They are just like particles obeying the laws of physics."
    game_journal.add_txt(lang, "APPLE_TREE_APPLE_RED_2_k_part2", str)
    game_journal.add_path("@lore;@lore_k_hidden;{20}Why you can help me;{20}Part 2")

    local str = "^x00ff00This is not to say that some entities here do not "
        .. "have the ^xffffffability^x00ff00 to save me. "
        .. "^xff00ffSagittarius A*^x00ff00 "
        .. "could save me in the blink "
        .. "of an eye, but he has no will to do so. "
        .. "Indeed, ^xff00ffTON 618^x00ff00 could save me "
        .. "in the amount of time it takes "
        .. "an electron to drop from one orbital to another, "
        .. "but he would only save me if it helped the punchline "
        .. "of one of his jokes.\n\n"
        .. "I am concerned about my humanity, "
        .. "whereas Sagittarius A* is beyond humanity and is "
        .. "consumed by Inner Botany and Re-Creation theory. "
        .. "Going further, TON 618 is so far past "
        .. "Inner Botany theory and Re-Creation theory "
        .. "that nobody can imagine what his true motivations are."
    game_journal.add_txt(lang, "APPLE_TREE_APPLE_RED_2_k_part3", str)
    game_journal.add_path("@lore;@lore_k_hidden;{20}Why you can help me;{30}Part 3")
end

-------------------------------------------------------------------------------
