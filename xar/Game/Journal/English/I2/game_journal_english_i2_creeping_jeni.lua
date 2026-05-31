--File: game_journal_english_i2_creeping_jeni.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Creeping Jeni^!.\n\n"
        .. "If you make your way to the bottom, you can find "
        .. "many Cannon upgrades and also a ^xff00ffToronto City^!.\n\n"
        .. "To get there you will have to be stealthy.\n\n"
        .. "It is too difficult to kill all the monsters: "
        .. "instead you must hide from them.\n\n"
        .. "Consider using your EMP here if it is strong enough. ";
    game_journal.add_txt(lang, "CREEPING_JENI_ENTRANCE_2", str)
    game_journal.add_path("@area;@area_i2;@area_i2_creep;{10}Overview")

    game_journal.add_txt_cb(lang, "CREEPING_JENI_TREASURE_k_part1",
        p.CREEPING_JENI_TREASURE_k_part1)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_dinner;{10}Part 1")

    local str = "^x00ff00She told me that they were probably not "
        .. "found in the form that we got them. "
        .. "She said they were created by the "
        .. "^xff0000Maze Encoding Team^x00ff00.\n\n"
        .. "I pressed her more. "
        .. "She seemed uneasy.\n\n"
        .. "^xff00ff\"Well, if our client wants some computational "
        .. "task to be performed, it can be encoded into "
        .. "a maze, and by us solving the maze, they can "
        .. "reconstruct a solution to the original problem "
        .. "they wanted to solve.\"^x00ff00\n\n"
        .. "\"So what, we are computers being used "
        .. "to decrypt e-mails without our knowledge?\" I asked.";
    game_journal.add_txt(lang, "CREEPING_JENI_TREASURE_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_dinner;{20}Part 2")

    local str = "^xff00ff\"Haha, maybe!\" she said. "
        .. "\"Although, a super computer would probably "
        .. "be better for that. "
        .. "These mazes we solve are better suited for the human mind.\"^x00ff00\n\n"
        .. "I told her that I didn't think that the human "
        .. "brain was powerful enough.\n\n"
        .. "^xff00ff\"Well, perhaps the human "
        .. "mind goes beyond the brain,\" she said.^x00ff00\n\n"
        .. "She started to talk but then paused for a few seconds.\n\n"
        .. "^xff00ff\"The mazes we are solving may not actually be... finite.\"";
    game_journal.add_txt(lang, "CREEPING_JENI_TREASURE_k_part3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_dinner;{30}Part 3")

    local str = "^x00ff00How is that possible? "
        .. "I mentioned the time I brought "
        .. "the Sudoku puzzle into work. "
        .. "That puzzle was 9x9 = 81 squares.  Each square can be "
        .. "one of 9 numbers. "
        .. "So there were at most 9^81 possible arrangements. "
        .. "That is certainly finite, although quite large.\n\n"
        .. "^xff00ff\"Well, we live in an analog  world. "
        .. "When you look at a square and it has number 7 written in it, "
        .. "that written number consists of many many particles, "
        .. "and there may be countless subatomic particles "
        .. "forming those particles, and this hierarchy of particles "
        .. "may go down forever like a fractal. "
        .. "Moreover, we are living in a quantum world of superpositions, "
        .. "and that system may be even more deep than we can "
        .. "imagine.\"";
    game_journal.add_txt(lang, "CREEPING_JENI_TREASURE_k_part4", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_dinner;{40}Part 4")

    local str = "^xff00ff\"When you see the number 7, an infinite number of "
        .. "hidden computations may occur in your fractal mind. "
        .. "And, not every number 7 written down may be made up of the "
        .. "same underlying fractal data. "
        .. "These mazes that we solve for work are special because "
        .. "of hidden data encoded into them.\" she said. ^x00ff00\n\n"
        .. "We both paused for a few seconds. "
        .. "\"Can you prove that?\" I asked.\n\n"
        .. "^xff00ff\"Hahaha!  Of course not!\" Jane laughed. "
        .. "\"It's just a story I like to tell myself to "
        .. "explain why the heck I am spending my life "
        .. "solving these mazes!\"";
    game_journal.add_txt(lang, "CREEPING_JENI_TREASURE_k_part5", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_dinner;{50}Part 5")

    local str = "^xff00ff\"Let me give you a piece of advice. "
        .. "You will never find any hard evidence "
        .. "for the questions you are asking. "
        .. "The best you will find is other people "
        .. "who share your beliefs based on a similar "
        .. "lack of evidence. "
        .. "So, just stop asking and learn to enjoy the game.\"";
    game_journal.add_txt(lang, "CREEPING_JENI_TREASURE_k_part6", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_random;@yang_ima_random_jane;@yang_ima_random_jane_dinner;{60}Part 6")
end

--It doesn't capture the full effect if the player reads this
--from their journal.
function p.CREEPING_JENI_TREASURE_k_part1(chunk_id)
    ga_print("CREEPING_JENI_TREASURE_k_part1: chunk_id = " .. tostring(chunk_id))
    local seed = ga_chunk_id_to_seed(chunk_id)
    ga_srand(seed)
    local type = ga_randi(1,2)
    --
    local color_str1 = ""
    if( type == 1 ) then color_str1 = "^xff0000red^x00ff00" end
    if( type == 2 ) then color_str1 = "^xffffffwhite^x00ff00" end
    --
    local color_str2 = ""
    if( type == 1 ) then color_str2 = "white" end
    if( type == 2 ) then color_str2 = "red" end
    --
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "^xff00ffHow about dinner Noobie?^x00ff00\n\n"
        .. "The talented Jane came by my office "
        .. "just before the end of work. "
        .. "I agreed. "
        .. "This was a while before she got sick.\n\n"
        .. "When we got there I told her I could "
        .. "have sworn that she was wearing a "
        .. color_str1
        .. " hat.\n\n"
        .. "^xff00ff\"Nope, it has been "
        .. color_str2
        .. " the entire day. "
        .. "Having memory problems? "
        .. "Your computer has been making some mistakes. "
        .. "Maybe you should bring it into the shop to "
        .. "get it checked out\", she laughed.^x00ff00\n\n"
        .. "At dinner we chatted pleasantly for a while, "
        .. "but eventually I brought up the elephant "
        .. "in the room. I asked her where she thought the mazes "
        .. "we solved for work came from."
    return str
end

-------------------------------------------------------------------------------
