--File: game_journal_english_i2_small_blue_flower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00(Primary) Small Blue Flower^!. \n\n"
        .. "There are some rail and health upgrades in the center.\n\n"
        .. "In the center there is the ^x00ff00I2 Library^!.\n\n"
        .. "Also in the center there is a 50% chance of finding a "
        .. "^x00ff00Secondary^! Small Blue Flower."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_sbf;{10}Primary")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I wanted to know what a person could do with "
        .. "all the solutions to the mazes that we were finding at work. "
        .. "In my mind, these so called \"cores\" which are the exit points "
        .. "of the maze are like a resource that we are mining.\n\n"
        .. "One byproduct I get from my job of solving a maze "
        .. "is the creation of an Inner Core in my mind. "
        .. "^x00ff00I went to the coffee room and I saw a coworker that I "
        .. "respected for her intelligence. "
        .. "I wanted to know what she would do with an unlimited "
        .. "supply of Inner Cores. "
        .. "However I dared not be so explicit, so I phrased it by "
        .. "asking what she would do with an unlimited supply of resources."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_FRUIT_TREASURE_CHUNK_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_rec;@yang_ima_rec_find;{10}Part 1")

    local str = "^x00ff00She stared at me seriously for a few seconds. "
        .. "\"What would I do with an unlimited supply of resources?\" "
        .. "Then she chuckled and then said one word: "
        .. "\"^xffffffRecreation^x00ff00\". "
        .. "\"What do you mean?\" I said. "
        .. "^xff00ff\"You know, recreation.  Like sports.\"^x00ff00 "
        .. "We have quite the recreation area in this facility. "
        .. "You might be interested in that. "
        .. "She smiled and walked away.\n\n"
        .. "A few days later I went to the rec center. "
        .. "To get in you needed a keycard. "
        .. "The door was surprisingly sophisticated. "
        .. "The word \"Recreation\" was written on the cement wall, "
        .. "but there was a chip in the cement between the first E "
        .. "and the C. It almost looked like a hyphen.\n\n"
        .. "Of course! I thought. Not recreation, but \"re-creation\". "
        .. "The process of creating again. "
        .. "What do we do with all these Inner Cores? "
        .. "We \"create\"."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_FRUIT_TREASURE_CHUNK_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_rec;@yang_ima_rec_find;{20}Part 2")

    local str = "^x00ff00I applied for a keycard for the rec center "
        .. "and I got it after a week.\n\n"
        .. "There was a rec social event to get to know people. "
        .. "I went there while my mind was in the Xar world.\n\n"
        .. "I would introduce myself to someone and ask them "
        .. "what they would do with an unlimited supply of resources. "
        .. "I got some interesting answers. "
        .. "Such as \"build the largest laser tag arena\" or "
        .. "\"build a bigger recreation center\". "
        .. "I would look into their eyes briefly and this would create "
        .. "a perception of them. "
        .. "Some people felt caring. Some felt arrogant. Some felt scared."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_FRUIT_TREASURE_CHUNK_k_part3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_rec;@yang_ima_rec_find;{30}Part 3")

    local str = "^x00ff00I connected with one woman who said the following: "
        .. "\"What would I do with an unlimited supply of resources? "
        .. "Easy, cure cancer. What would you do?\"\n\n"
        .. "I had a standard answer I give for this: "
        .. "I would develop the technology to destroy large asteroids "
        .. "before they hit earth.\n\n"
        .. "\"Oh that's easy, just send a team of drillers up "
        .. "in a space ship, drill a hole in the asteroid, "
        .. "and put a nuke in the hole.\"\n\n"
        .. "I liked her style, and when I made eye contact with her "
        .. "it gave me a good feeling about her. "
        .. "If I had to put it in a word, I would say she was "
        .. "\"well-founded\"."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_FRUIT_TREASURE_CHUNK_k_part4", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_rec;@yang_ima_rec_find;{40}Part 4")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "At work in the morning I would solve mazes "
        .. "while my mind was in Xar. "
        .. "At lunch I would quickly stuff food into my face "
        .. "and go to the recreation center to play racquetball "
        .. "with my \"contact\" there.\n\n"
        .. "I will call her \"^xff00ffmy recreation contact^x00ff00\"."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_SECONDARY_TREASURE_CHUNK_k_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_rec;@yang_ima_rec_find;{50}Part 5")

    local str = "^x00ff00I wore my sunglasses I found on the ground by a park there "
        .. "so I would not have a complete "
        .. "eye contact connection with anyone.\n\n"
        .. "The sunglasses were pretty visibly beat up.\n\n"
        .. "The first time we played racquetball she said I could take "
        .. "off my sunglasses. \"Oh what pretty eyes you have! "
        .. "Your eyes are purple and your pupils look like polka dots.\"\n\n"
        .. "We made eye contact and I could feel many Inner Cores in my mind "
        .. "being transferred to her, still leaving some cores for me.\n\n"
        .. "I hope those cores are being used for good, but there is "
        .. "no way to know for sure."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_SECONDARY_TREASURE_CHUNK_k_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_rec;@yang_ima_rec_find;{60}Part 6")

    local str = "^x00ff00Before we left she told me my sunglasses were not very good. "
        .. "I asked what was bad about them.\n\n"
        .. "She said \"Because each lens contains only 12 Railguns, "
        .. "and they are older models of the Railguns so they heat up quickly.\"\n\n"
        .. "I asked if she was joking and she gave me a dismissive smirk.\n\n"
        .. "She gave me her own sunglasses, which I wore from then on."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_SECONDARY_TREASURE_CHUNK_k_part3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_rec;@yang_ima_rec_find;{70}Part 7")

    local str = "This is a ^x00ff00(Secondary) Small Blue Flower^!. \n\n"
        .. "There are some rail and health upgrades in the center.\n\n"
        .. "In the center, there is also a 50% chance of finding a "
        .. "^x00ff00Tertiary^! Small Blue Flower.\n\n"
        .. "This differs from an ordinary Small Blue Flower because "
        .. "it starts at the secondary part, as opposed to the primary part."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_2", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_sbf;{20}Secondary")

    local str = "This is a ^x00ff00(Tertiary) Small Blue Flower^!. \n\n"
        .. "There are some nuke and EMP upgrades in the center.\n\n"
        .. "There are also some I3 WIG Flowers in the center.\n\n"
        .. "In the center, there is also a 50% chance of finding a "
        .. "^x00ff00 Quaternary^! Small Blue Flower."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_3", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_sbf;{30}Tertiary")

    local str = "This is a ^x00ff00(Quaternary) Small Blue Flower^!. \n\n"
        .. "In the center there are Rocket upgrades. "
        .. "Also in the center are the following places:\n\n"
        .. "1) Montreal\n"
        .. "2) Danville\n"
        .. "3) Toronto\n"
        .. "4) ^xff00ffAlpha Menger Sponge^!\n"
        .. "5) Quinary Small Blue Flower."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_4", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_sbf;{40}Quaternary")

    local str = "This is a ^x00ff00(Quinary) Small Blue Flower^!. \n\n"
        .. "There is no treasure.\n\n"
        .. "However there is a high density of Sentinels, "
        .. "which you can farm for EMP Freeze Time upgrades."
    game_journal.add_txt(lang, "SMALL_BLUE_FLOWER_5", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_sbf;{50}Quinary")
end

-------------------------------------------------------------------------------
