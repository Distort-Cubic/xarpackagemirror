--File: game_journal_english_yw_small_island.lua

local lang = "english"

function p.main()
    p.recordable()
    p.not_recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "YW_SMALL_ISLAND_WP_main", p.YW_SMALL_ISLAND_WP_main)
    game_journal.add_path("@area;@area_yw;@area_yw_island;@area_yw_island_small;{10}Overview")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Before I got lost in this place, "
        .. "I lived my life in normal reality, "
        .. "but I wished for another world.\n\n"
        .. "An \"inner\" world which was everywhere "
        .. "that I could enter and explore.\n\n"
        .. "I looked for this place everywhere "
        .. "inside every corner of my mind. "
    game_journal.add_txt(lang, "YW_SMALL_ISLAND_CAVE_TREASURE_1_k_1", str)
    game_journal.add_path("@yang;@yang_intro;{10}Part 1")

    local str = "^x00ff00"
        .. "One day I found it, while looking at a "
        .. "Yin-Yang symbol on a bulletin board.\n\n"
        .. "I felt myself go from the bright side "
        .. "to the dark side.\n\n"
        .. "The hidden side.\n\n"
        .. "And then my mind was inside this "
        .. "secret world. "
    game_journal.add_txt(lang, "YW_SMALL_ISLAND_CAVE_TREASURE_1_k_2", str)
    game_journal.add_path("@yang;@yang_intro;{20}Part 2")

    local str = "^xff00ffGo to the waypoint room in the center of a Jumbo Yellow Flower. "
        .. "If you shrink and go to the base of the "
        .. "cement pyramid below the waypoint, "
        .. "one of the cubes has a tunnel to a special area.^! "
    game_journal.add_txt(lang, "YW_SMALL_ISLAND_CAVE_TREASURE_2_hint", str)
    game_journal.add_path("@area;@area_yw;@area_yw_flower;@area_yw_flower_jumbo_yellow;{20}Secret area")
    game_journal.add_path("@area;@area_mid;@area_mid_rich;@area_mid_rich_sew;{10}Secret message") --Appears there also.
    game_journal.add_path("@area;@area_yw;@area_yw_pyr;@area_yw_pyr_large;{10}Secret placement") --Change num?

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "What do I mean when I say I went over to "
        .. "\"the hidden side\"?\n\n"
        .. "Well, one of the more noticeable "
        .. "aspects was when I talked to people, "
        .. "I perceived additional meaning "
        .. "in their words. "
        .. "It was as if the extra meaning was "
        .. "being transmitted directly to my brain. "
        .. "This was ESP. "
    game_journal.add_txt(lang, "YW_SMALL_ISLAND_CAVE_TREASURE_2_k_1", str)
    game_journal.add_path("@yang;@yang_intro;{30}Part 3")

    local str = "^x00ff00"
        .. "This extra meaning existed in the hidden "
        .. "world, which I was now interfacing.\n\n"
        .. "There was extra meaning hidden everywhere "
        .. "which I was blind to before.\n\n"
        .. "The funny thing was, if I perceived "
        .. "extra meaning from someone and I confronted "
        .. "them about it, they would deny it. "
        .. "But in a way this made sense: "
        .. "the hidden world cannot come out into the open. "
    game_journal.add_txt(lang, "YW_SMALL_ISLAND_CAVE_TREASURE_2_k_2", str)
    game_journal.add_path("@yang;@yang_intro;{40}Part 4")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "When I first entered the hidden world "
        .. "(with my mind), "
        .. "it was like someone had flipped a light switch. "
        .. "But soon I learned how to flip the switch myself. "
        .. "I could turn the extra meaning I perceived around me on and off. "
    game_journal.add_txt(lang, "YW_SMALL_ISLAND_CAVE_TREASURE_3_k_1", str)
    game_journal.add_path("@yang;@yang_intro;{50}Part 5")

    local str = "^x00ff00"
        .. "When I needed to focus on the immediate, "
        .. "I would turn the hidden world off.\n\n"
        .. "When I wanted to relax and explore the "
        .. "universe, I would turn the "
        .. "hidden world on. "
    game_journal.add_txt(lang, "YW_SMALL_ISLAND_CAVE_TREASURE_3_k_2", str)
    game_journal.add_path("@yang;@yang_intro;{60}Part 6")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I turned the hidden world on and off like a light. "
        .. "I felt pretty sure of myself, "
        .. "like I had a secret power "
        .. "that nobody else had.\n\n"
        .. "Then one day, when I tried to "
        .. "turn the hidden world off, "
        .. "something funny happened. "
        .. "It stayed on. "
        .. "That is when things started "
        .. "to go downhill. "
    game_journal.add_txt(lang, "YW_SMALL_ISLAND_CAVE_TREASURE_4_k_1", str)
    game_journal.add_path("@yang;@yang_intro;{70}Part 7")

    local str = "^x00ff00"
        .. "I found myself unable to escape the hidden world. "
        .. "The more I struggled, the deeper I fell.\n\n"
        .. "The hidden world quickly turned "
        .. "from a magical forest "
        .. "into a hellscape. "
    game_journal.add_txt(lang, "YW_SMALL_ISLAND_CAVE_TREASURE_4_k_2", str)
    game_journal.add_path("@yang;@yang_intro;{80}Part 8")

    game_journal.add_txt_cb(lang, "YW_SMALL_ISLAND_REMINDER", p.YW_SMALL_ISLAND_REMINDER);
    game_journal.add_path("@area;@area_lib;@area_lib_yw;{40}Small white flower") --In the lib.
end

function p.YW_SMALL_ISLAND_WP_main(chunk_id)
    --Ignoring chunk_id.
    if game_genesis.enabled() then
        return "There are caves inside this ^x00ff00Ying Cave Island^!. "
            .. "In the first layer of detail, you can find yellow treasure rooms "
            .. "called \"^x0000ffLayer 1^! Treasure Rooms\".\n\n"
            .. "There is a chance that one of these will allow you to shrink, "
            .. "and if you shrink one more time (and go through the \"pipe layer\") you can enter red "
            .. "\"^x0000ffLayer 2^! Treasure Rooms\".\n\n"
            .. "You can explore the caves outside these "
            .. "treasure rooms to find yellow \"^x0000ffLayer 3^! Treasure Rooms\". "
            .. "Finally, the green cubes you can find on that "
            .. "layer are actually \"^x0000ffLayer 4^! Treasure rooms\""
    else
        return "There are caves inside this ^x00ff00Ying Cave Island^!. "
            .. "In the first layer of detail, you can find yellow treasure rooms "
            .. "called \"^x0000ffLayer 1^! Treasure Rooms\".\n\n"
            .. "There is a chance that one of these will allow you to shrink, "
            .. "and if you shrink one more time (and go through the \"pipe layer\") you can enter red "
            .. "\"^x0000ffLayer 2^! Treasure Rooms\".\n\n"
            .. "You can explore the caves outside these "
            .. "treasure rooms to find yellow \"^x0000ffLayer 3^! Treasure Rooms\", "
            .. "which are special because there you can get upgrades for your "
            .. "Laser weapon.\n\n"
            .. "Finally, the green cubes you can find on that "
            .. "layer are actually \"^x0000ffLayer 4^! Treasure rooms\", which are "
            .. "special because there you can get ^x00ff00Health and Minigun upgrades.^! "
    end
end

function p.YW_SMALL_ISLAND_REMINDER(chunk_id)
    --Ignoring chunk_id.
    local str = "Remember this: in the Ying World, below the starting island that has the tutorial, "
        .. "there is a ^xffffffsmall WHITE flower^!. "
    if not game_genesis.enabled() then
        str = str .. "\n\nHence, every YING flower has a small WHITE flower inside itself.\n\n"
            .. "A small white flower is challenging but is very useful for\n"
            .. "1) getting health upgrades,\n"
            .. "2) getting ivory armor (600%), and\n"
            .. "3) getting nukes. "
    end
    return str
end

-------------------------------------------------------------------------------

function p.not_recordable()
    game_journal.add_txt_cb(lang, "YW_SMALL_ISLAND_WP_levels", p.YW_SMALL_ISLAND_WP_levels)
end

function p.YW_SMALL_ISLAND_WP_levels(chunk_id)
    --Actually using chunk_id.
    local level = ga_chunk_id_to_level(chunk_id)
    local str = ""
    str = str .. "Right now you are on level " .. tostring(level) .. ".\n\n"
    str = str .. "Layer 1 Treasure Chunks (yellow) are on level " .. tostring(level+1) .. ".\n\n"
    str = str .. "Layer 2 Treasure Chunks (red) are on level " .. tostring(level+3) .. ".\n\n"
    str = str .. "Layer 3 Treasure Chunks (yellow) are on level " .. tostring(level+4) .. ".\n\n"
    str = str .. "Layer 4 Treasure Chunks (green) are on level " .. tostring(level+5) .. "."
    return str
end
