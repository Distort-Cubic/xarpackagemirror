--File: game_journal_english_space_heart_house.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I finished my cat 2.0 costume!\n\n"
        .. "You might think making the outfit "
        .. "would take skill, or perhaps the wisdom to use "
        .. "out of the box solutions.  However, what it came down "
        .. "to for me was a sheer power of will."
    game_journal.add_txt(lang, "ENDING_HEART_KEY_part1", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part1;{10}Part 1")

    local str = "^x00ff00"
        .. "I decided to surprise you with the outfit. "
        .. "It would be the least I could do for you after saving "
        .. "me from the Fractal Block World.\n\n"
        .. "I would visit you not in the east where I live, "
        .. "but out west where you live.\n\n"
        .. "I took a vacation from work, put the outfit in "
        .. "a backpack along with some other necessities, "
        .. "and got on a train to the west.\n\n"
        .. "I did not tell you I was visiting."
    game_journal.add_txt(lang, "ENDING_HEART_KEY_part2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part1;{20}Part 2")

    local str = "^x00ff00"
        .. "It is probably better not to open Pandora's Box. "
        .. "Maybe it is better to stay back and enjoy my "
        .. "fantasies.  But I say this: Let's open the box and "
        .. "see what is inside.  Let us see where it takes us."
    game_journal.add_txt(lang, "ENDING_HEART_KEY_part3", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part1;{30}Part 3")

    local str = "^x00ff00"
        .. "This key opens a secret door. "
        .. "In the root of this world (the top of the world), "
        .. "there is a room with the picture of a dragon "
        .. "in it.\n\n"
        .. "One of the ceiling tiles in that room looks solid but you "
        .. "can actually fly through it.\n\n"
        .. "Also, the fake ceiling tile is diagonal from a corner."
    game_journal.add_txt(lang, "ENDING_HEART_KEY_part4", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part1;{40}Part 4")

    local str = "^x00ff00"
        .. "Secrets are funny things. "
        .. "It is probably good they are not too much in the open. "
        .. "That protects us. ";
    game_journal.add_txt(lang, "ENDING_HEART_KEY_part5", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part1;{50}Part 5")

    ---------------------------------------------

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I love this painting.\n\n"
        .. "It is called \"Springtime\" by Pierre-Auguste Cot.\n\n"
        .. "It reminds me of us."
    game_journal.add_txt(lang, "HEART_HOUSE_DOOR_1_part1", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part2;{10}Part 1")

    local str = "^x00ff00"
        .. "Well, maybe it does not remind me of how we exist now.\n\n"
        .. "Instead, it reminds me of what we could have been if I had not "
        .. "stayed in the east and worked for the "
        .. "Inner Mechanization Agency. ";
    game_journal.add_txt(lang, "HEART_HOUSE_DOOR_1_part2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part2;{20}Part 2")

    ---------------------------------------------

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I found this secret farmhouse in the Fractal Block World.\n\n"
        .. "I threw away some of the junk of the previous owners and put in "
        .. "a few things of my own."
    game_journal.add_txt(lang, "DAN_HOUSE_JUNGLE_LIBRARY_3_1_part1", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part3;{10}Part 1")
    
    local str = "^x00ff00"
        .. "Imagine us living in a place like this together. "
        .. "Of course, it should not be make of blocks, "
        .. "and it should be smaller.  Maybe it could be an apartment at first."
    game_journal.add_txt(lang, "DAN_HOUSE_JUNGLE_LIBRARY_3_1_part2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part3;{20}Part 2")

    local str = "^x00ff00"
        .. "On the train ride to visit you for your surprise, "
        .. "using my lucky pen I wrote a letter of resignation to the "
        .. "Inner Mechanization Agency. "
        .. "I did not send it, I just read it over and over and "
        .. "tried it on for size.\n\n"
        .. "I remember thinking that we lost so much time with me "
        .. "working for the IMA. "
        .. "But every day is a new day, they say. "
        .. "I could get a job out west to be close to you. "
        .. "There must be a job out there suited for someone "
        .. "with my particular set of skills."
    game_journal.add_txt(lang, "DAN_HOUSE_JUNGLE_LIBRARY_3_1_part3", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part3;{30}Part 3")

    local str = "^x00ff00"
        .. "I don't need to see the ^xffffffOmega Core^x00ff00.\n\n"
        .. "I can do something else with my life. "
        .. "I can be with you."
    game_journal.add_txt(lang, "DAN_HOUSE_JUNGLE_LIBRARY_3_1_part4", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part3;{40}Part 4")

    local str = "^x00ff00"
        .. "I would love to watch the stars with you on the balcony, "
        .. "but there is a secret at the center of the Galaxy."
    game_journal.add_txt(lang, "DAN_HOUSE_JUNGLE_LIBRARY_3_1_part5", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part3;{50}Part 5")

    ---------------------------------------------

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I arrived and waited in a park outside your apartment complex. "
        .. "It was early in the morning.  I wanted to surprise you as you walked out."
    game_journal.add_txt(lang, "DAN_HOUSE_ICARUS_2_part1", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part4;{10}Part 1")

    local str = "^x00ff00When you did walk out... you came out with someone else.\n\n"
        .. "You two looked... very close.\n\n"
        .. "I hoped my eyes were deceiving me.\n\n"
        .. "I hoped that it wasn't permanent.\n\n"
        .. "Oh god, I am such a fool.\n\n"
        .. "I am good old crazy K: always down for a trip to wonderland, but a lone wolf "
        .. "until the very end.\n\n"
        .. "Why didn't you tell me? "
        .. "Did you think I couldn't handle it?"
    game_journal.add_txt(lang, "DAN_HOUSE_ICARUS_2_part2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part4;{20}Part 2")

    local str = "^x00ff00I sneaked away. I did not have the courage to see you.\n\n"
        .. "I spent the next few days there numb, trying to make the most of it by going to "
        .. "an amusement park and the local botanical gardens.\n\n"
        .. "I almost threw out my cat outfit in the trash at the gardens, but I kept it just in case. "
        .. "I did not want to have to reconstruct it later."
    game_journal.add_txt(lang, "DAN_HOUSE_ICARUS_2_part3", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part4;{30}Part 3")

    local str = "^x00ff00On the train ride back to my home in the east, "
        .. "I renewed my vows to my true life partner:\n\n"
        .. "^xff0000the Inner Mechanization Agency^x00ff00.\n\n"
        .. "I decided to make it my goal to see the ^xffffffOmega Core^x00ff00 with my own eyes. "
        .. "It might take years to rise in the ranks and get the security clearance to see it. "
        .. "If I couldn't get the clearance, I would see the Omega Core by other means.\n\n"
        .. "It was my new destiny."
    game_journal.add_txt(lang, "DAN_HOUSE_ICARUS_2_part4", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_trainwest;@yang_back_trainwest_part4;{40}Part 4")

    --more!!!
end
