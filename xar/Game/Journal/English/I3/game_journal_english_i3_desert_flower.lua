--File: game_journal_english_i3_desert_flower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "^xffff00So if we make eye contact, you could deliver a particle "
        .. "into my mind to help me.^x00ff00\n\n"
        .. "But how can you transport that particle safely? "
        .. "Maybe there is another way. "
        .. "Maybe you already have done this. "
        .. "Let me tell you a story.\n\n"
        .. "I imagine you have secret connections "
        .. "and networks via your job. "
        .. "My body still requires food, so I would go to the "
        .. "grocery store a few blocks away to grab some supplies. "
        .. "At the store I would wear the sunglasses "
        .. "my Re-Creation contact gave me "
        .. "(although that is not perfect protection "
        .. "against world class technology). "
        .. "I have to worry about unprotected eye contact."
    game_journal.add_txt(lang, "DESERT_FLOWER_BIG_TREASURE_part1", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_youvisit;@yang_trapped_youvisit_messenger;{10}Part 1")

    local str = "^x00ff00One day on the way out of the store, "
        .. "I saw a woman with what looked like a baby in a stroller.\n\n"
        .. "She was sitting on a bench and was wearing a shirt that said "
        .. "\"^xff00ffGalaxy Brain Catastrophe^x00ff00\", "
        .. "a reference to that arcade game "
        .. "we played together near the cabin years ago.\n\n"
        .. "This could have been your messenger. "
        .. "I didn't know for sure, but it was worth taking a chance. "
        .. "I crouched down close to her, tilted my sunglasses down, "
        .. "and made eye contact with her.\n\n"
        .. "\"Do you like that game?\" I asked.\n\n"
        .. "\"It's okay,\" she smiled."
    game_journal.add_txt(lang, "DESERT_FLOWER_BIG_TREASURE_part2", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_youvisit;@yang_trapped_youvisit_messenger;{20}Part 2")

    local str = "^x00ff00As soon as our eyes met, "
        .. "it was like lightning struck my mind. "
        .. "^xffffffThe lightning entered my Ying World, "
        .. "went into my Small Yellow Flowers, "
        .. "my Small Cannon Pyramids, etc.^x00ff00\n\n"
        .. "The lightning branched when you made decisions. "
        .. "This branching tree of lightning filled my mind. "
        .. "^xffffffI knew that the light came from you.^x00ff00\n\n"
        .. "If the branching tree of lightning reached an inner core, "
        .. "I knew from my experience at my job that a single branch "
        .. "of light would shoot through the tree to connect "
        .. "the starting point to the inner core.\n\n"
        .. "^xff0000We could then submit that path, that \"solution to the maze\" "
        .. "to the Maze Solution Verification Team down the hall. "
        .. "The folks in that team are nice people.^x00ff00"
    game_journal.add_txt(lang, "DESERT_FLOWER_BIG_TREASURE_part3", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_youvisit;@yang_trapped_youvisit_messenger;{30}Part 3")
end

-------------------------------------------------------------------------------
