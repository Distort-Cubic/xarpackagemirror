--File: game_journal_english_space_black_hole_big.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I still found time at work to search for my "
        .. "conjectured 7 hidden floors of the "
        .. "Inner Mechanization Agency building.\n\n"
        .. "Although I did not find the floors, on the 9th floor "
        .. "(underground) I found a room called the ^xff00ffVIP lounge^x00ff00.\n\n"
        .. "It had a combination door lock which I could not open, "
        .. "despite my efforts of trying random combinations for days."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_1_STORY", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_9floor;@yang_ima_9floor_blackhole;{10}Part 1")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I kept trying combinations for that door, but none would work."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_4_1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_9floor;@yang_ima_9floor_blackhole;{20}Part 2")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Sometime after I returned back to work, "
        .. "I tried the door combination again to the VIP lounge and it opened.\n\n"
        .. "Inside I saw many things, but no references to Inner Botany Theory. "
        .. "I saw board games, posters for movies, DVDs, and books.\n\n"
        .. "I took pictures of the DVDs, for analysis later. "
        .. "The only DVD that stood out was a documentary on black holes, "
        .. "which I snatched to watch at home."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_4_2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{10}Black hole DVD;{10}Part 1")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I brought the black hole DVD home and watched it. "
        .. "I knew most of it, but what stood out was the example that if "
        .. "Alice fell into a black hole, then two things would happen in parallel.\n\n"
        .. "On the one hand, she would spiral deeper and deeper towards the center.\n\n"
        .. "On the other hand, she would be scrambled and would evaporate out of the "
        .. "event horizon, never to be reconstructed again because the scrambling was too "
        .. "complicated.\n\n"
        .. "It was a pattern which once you heard it, "
        .. "you would start to apply it everywhere."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_4_3_part1", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{10}Black hole DVD;{20}Part 2")

    local str = "^x00ff00I then looked up all the DVDs that I took a picture of. "
        .. "Only one did not "
        .. "show up on the internet: \"Layer 17\".\n\n"
        .. "I figured it was significant because I thought the "
        .. "Inner Mechanization Agency had 16 floors, and 17 was just "
        .. "one more than 16, so it was still a relevant number."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_4_3_part2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{10}Black hole DVD;{30}Part 3")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I returned the black hole DVD to the VIP lounge. "
        .. "I proceeded to grab the mysterious Layer 17 DVD. "
        .. "While I was inside, a blond woman entered.\n\n"
        .. "\"I have not seen you here before,\" the woman said. "
        .. "I made up some excuse as to why I was there.\n\n"
        .. "\"What sort of stuff are you into?\" she asked.\n\n"
        .. "I told her that I liked gardening. "
        .. "She showed me an old book called "
        .. "\"^xffff00Intermediate Botany^x00ff00\". "
        .. "How did I miss that before? "
        .. "I grabbed it and got the heck out of there."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_5_3", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{20}Intermediate botany book;{10}Part 1")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I came home with the DVD and the book "
        .. "and the strangest thing happened: "
        .. "I realized I already had a book called "
        .. "\"^xffff00Intermediate Botany^x00ff00\". "
        .. "Had a friend given it to me in high school as a gag gift?\n\n"
        .. "I could not remember, and it rattled me a bit.\n\n"
        .. "I did not discount the possibility that my copy of the book "
        .. "spontaneously appeared out of nothing.\n\n"
        .. "Using my lucky purple pen, I put a dot inside the \"O\" of "
        .. "the cover of my book so I could remember which one was which."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_6_DOOR_part1", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{20}Intermediate botany book;{20}Part 2")

    local str = "^x00ff00I started to watch the DVD. "
        .. "It was in French. there were no subtitles, "
        .. "and I did not speak the language. "
        .. "Watching it in the hidden world was the only way to make "
        .. "it enjoyable. I gathered it was about the difficult task "
        .. "of baking a cake with 17 layers.\n\n"
        .. "I wasn't sure what I was even looking for, and it felt like "
        .. "I was on a wild goose chase.\n\n"
        .. "However, the DVD glitched out and a weird pattern appeared "
        .. "on the screen. It put my mind into a very excited state for "
        .. "some reason.\n\n"
        .. "I was inspired, and what I decided to do was to "
        .. "compare my Intermediate Botany book with the one I picked up "
        .. "from the office."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_6_DOOR_part2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{20}Intermediate botany book;{30}Part 3")

    local str = "^x00ff00I had the two books open side by side. "
        .. "Sometimes there would be a slightly different bit of ink "
        .. "in one of the two books.\n\n"
        .. "I wrote down which letters these errors occurred in. "
        .. "It spelled what seemed like a gibberish message. "
        .. "I did an internet search for the gibberish message, "
        .. "and it autocorrected it to the name of a certain nature area "
        .. "nearby.\n\n"
        .. "It was not a park, but rather some state owned "
        .. "piece of land. I decided I would go there that weekend."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_6_DOOR_part3", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{20}Intermediate botany book;{40}Part 4")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "As planned, I visited the nature area the next weekend. "
        .. "I didn't know what I was going to find there, but "
        .. "I was looking for a sign.\n\n"
        .. "I wore black clothes with a black backpack. "
        .. "I put my Yin Yang piece of paper in my pack which was "
        .. "my best way of entering the hidden world. "
        .. "I had a flashlight that could be strapped to my forehead.\n\n"
        .. "I left my apartment just after midnight. "
        .. "That may sound like risky behavior, but you know I am "
        .. "no stranger to danger."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_7_1_part1", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{30}Nature area;{10}Part 1")

    local str = "^x00ff00I got to the nature area "
        .. "and checked to make sure nobody was around. "
        .. "It felt as if I was going into a black hole.\n\n"
        .. "It occured to me that if something should happen to me, "
        .. "I should leave something behind.\n\n"
        .. "So, I took a picture of the Yin Yang symbol with my phone "
        .. "and emailed it to myself."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_7_1_part2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{30}Nature area;{20}Part 2")

    local str = "^x00ff00I entered the forest..."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_7_1_part3", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{30}Nature area;{30}Part 3")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I entered the forest with my head flashlight on. "
        .. "I was using my phone to go towards a location that "
        .. "looked interesting from the satellite view.\n\n"
        .. "When I got there I found a circle of trees with a "
        .. "clearing in the middle. "
        .. "It looked like a location where people would go to party. "
        .. "Maybe it was an illegal camp site."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_8_1_part1", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{30}Nature area;{40}Part 4")

    local str = "^x00ff00In the center, instead of there being a fire pit, "
        .. "there was a ^xffff00microwave that was buried in the ground^x00ff00.\n\n"
        .. "This was the center of the black hole, I thought.\n\n"
        .. "I grabbed my ^xff00ffYin Yang piece of paper^x00ff00 and used it to enter "
        .. "the hidden world. "
        .. "I opened the microwave and inside there was..."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_8_1_part2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{30}Nature area;{50}Part 5")

    local str = "^x00ff00nothing.  ^xffffffThere was nothing inside.^x00ff00\n\n"
        .. "Is this some kind of sick joke?\n\n"
        .. "Once you unpeel all the layers of the onion, you are left with nothing?\n\n"
        .. "That's not what I believe."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_8_1_part3", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{30}Nature area;{60}Part 6")

    local str = "^x00ff00A hand grabbed my shoulder and I screamed at the top of my "
        .. "lungs and in a panic I accidentally dropped the Yin Yang piece of paper into "
        .. "the microwave.\n\n"
        .. "I ran for my life."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_8_1_part4", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{30}Nature area;{70}Part 7")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I ran out of the forest not looking back at whatever touched my shoulder. "
        .. "I fell over a few times and scratched my face. "
        .. "It was bleeding and would be hard to explain at work."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_8_TREASURE_k_part1", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{30}Nature area;{80}Part 8")

    local str = "^x00ff00I was glad to still be alive, but I was shook by the "
        .. "emptiness inside the microwave.\n\n"
        .. "It was upsetting to go so far as to think that there really was not a "
        .. "galaxy wide conspiracy to harvest and refine ultra low entropy "
        .. "spiritual devices that took place in a dimension "
        .. "that no one would admit existed.\n\n"
        .. "Also, the fact that I lost my Yin Yang piece of paper was like the "
        .. "universe kicking me when I was down. "
        .. "Since I saved a digital copy of it, I planned to print it at work using our "
        .. "technologically advanced printer."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_8_TREASURE_k_part2", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{30}Nature area;{90}Part 9")

    local str = "^x00ff00When I returned to work, I went to the VIP lounge "
        .. "and returned the baking DVD and the intermediate botany book.\n\n"
        .. "The blond woman was there. "
        .. "She asked me how I liked the book.\n\n"
        .. "^xff00ff\"I love Inner Botany theory\"^x00ff00 "
        .. "I slipped. I meant to say intermediate botany.\n\n"
        .. "^xffff00\"Ooh Inner Botany!  I have not heard that one before. "
        .. "That sounds like a fun trip,\"^x00ff00 she said."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_8_TREASURE_k_part3", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{40}The blond woman will take me to the annex;{10}Part 1")

    local str = "^x00ff00I was embarrassed, but I thought I should take advantage of being "
        .. "in this particular situation.\n\n"
        .. "^xff00ff\"Let me ask you a question,\"^x00ff00 I said. "
        .. "^xff00ff\"Is there any floor below the floor we are on now?\"^x00ff00\n\n"
        .. "^xffff00\"You mean the Annex?  I think you are talking about the Annex. "
        .. "I will take you there if you meet me here on Friday,\"^x00ff00 she said."
    game_journal.add_txt(lang, "BLACK_HOLE_BIG_8_TREASURE_k_part4", str)
    game_journal.add_path("@yang;@yang_back;@yang_back_blackhole;{40}The blond woman will take me to the annex;{20}Part 2")
end

-------------------------------------------------------------------------------
