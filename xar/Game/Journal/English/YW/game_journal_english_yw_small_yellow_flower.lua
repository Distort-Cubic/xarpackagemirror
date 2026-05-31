--File: game_journal_english_yw_small_yellow_flower.lua

local lang = "english"

function p.main()
    p.recordable()
    p.not_recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I am trapped in this Fractal Block World! "
        .. "I can feel how my mind has changed. "
        .. "The folds of my brain are bent and twisted over the "
        .. "jagged edges of the FRACTAL BLOCKS.\n\n"
        .. "You must find a \"Key to the Universe\" to release me. "
        .. "I have learned that you can acquire one where you find \"Inner Cores\". "
        .. "These Inner Cores guard the keys. "
        .. "Please save me! "
    game_journal.add_txt(lang, "SMALL_YELLOW_FLOWER_TREASURE_k", str)
    game_journal.add_path("@lore;@lore_k_plight;{10}The jagged edges of the fractal blocks")

    local str = "Message from TON 618:\n\n"
        .. "^x0000ffWell well well, haven't you just found a wonderful secret! "
        .. "There is a Blue Ring Device here. "
        .. "It will bring you outside of this Small Yellow Flower. "
        .. "But you will never be able to "
        .. "get to the Blue Ring Device because "
        .. "there is a wall of Lampreys in your way "
        .. "that are truly immune to EMP. "
        .. "Ahh ha!  Haha haa ha ha!\n\n"
        .. "But you know, there is another place you can find "
        .. "a Blue Ring Device within this Small Yellow Flower "
        .. "(that will bring you outside this Small Yellow Flower). "
        .. "It is quite deep, so you probably will not be able to find it! "
        .. "Ha ha ha! "
        .. "I wish I could ^xffffffshine a light^x0000ff on its location, "
        .. "but I would not want to spoil the fun.\n\n"
        .. "Ha ha ha haha ha ha hahaha!!!"
    game_journal.add_txt(lang, "SMALL_YELLOW_FLOWER_BLUE_RING_1", str)
    game_journal.add_path("@area;@area_yw;@area_yw_flower;@area_yw_flower_yellow;{30}Blue secret;{10}Hint")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Not all flowers grow in gardens. "
        .. "I like to explore and find these wild flowers.\n\n"
        .. "Here is a Blue Ring Device, although "
        .. "all Small Yellow Flowers contain such devices, only "
        .. "more hidden. "
    game_journal.add_txt(lang, "SMALL_YELLOW_FLOWER_ROOM_BLUE_k", str)
    game_journal.add_path("@area;@area_yw;@area_yw_flower;@area_yw_flower_yellow;{30}Blue secret;{20}More")
end

-------------------------------------------------------------------------------

function p.not_recordable()
    local str = ""
    str = "Did you get here without cheating?\n\n"
        .. "That would be impressive.";
    game_journal.add_txt(lang, "SMALL_YELLOW_FLOWER_SECRET_TREASURE", str)
end
