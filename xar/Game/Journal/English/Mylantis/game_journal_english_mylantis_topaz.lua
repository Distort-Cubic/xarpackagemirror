--File: game_journal_english_mylantis_topaz.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "These ^x0000ffBlue Rings^! will bring you fairly deep "
        .. "inside the Topaz Gem Sponge which is in the room below. "
        .. "Once you use these blue rings, your goal is to grow "
        .. "as much as possible until you leave the sponge. "
        .. "Then, you will find a treasure room. "
        .. "You can see the red treasure room by looking "
        .. "through the glass below here.\n\n"
        .. "The treasure consists of 1 thousand gold, "
        .. "10 health upgrades, and one Max Ammo upgrade for each "
        .. "of your weapons."
    game_journal.add_txt(lang, "TOPAZ_GEM_ENTRANCE", str)
    game_journal.add_path("@area;@area_my;@area_my_topaz;{10}What to do")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "When I first entered the hidden world, "
        .. "I experienced ESP when talking to other people. "
        .. "I confronted them about it, but they denied they "
        .. "experienced ESP.\n\n"
        .. "I wondered how this could be possible.\n\n"
        .. "Now I think perhaps it is like that thought "
        .. "experiment in philosophy called the Chinese Room."
    game_journal.add_txt(lang, "TOPAZ_GEM_TREASURE_k_part1", str)
    game_journal.add_path("@lore;@lore_k_hidden;@lore_k_hidden_esp;@lore_k_hidden_esp_cr;{10}Part 1")

    local str = "^x00ff00There is a room with a man inside. "
        .. "The man does not know Chinese. "
        .. "People insert a question into the room written in "
        .. "Chinese, and the man takes the question and looks "
        .. "it up in a book that is in the room. "
        .. "The book tells him the answer, also written in "
        .. "Chinese, which he writes on paper and passes out "
        .. "of the room.\n\n"
        .. "The man does not know Chinese, but the room does."
    game_journal.add_txt(lang, "TOPAZ_GEM_TREASURE_k_part2", str)
    game_journal.add_path("@lore;@lore_k_hidden;@lore_k_hidden_esp;@lore_k_hidden_esp_cr;{20}Part 2")

    local str = "^x00ff00So when I experience ESP when talking to people, "
        .. "I think perhaps it is the consciousness of the "
        .. "\"Chinese Room\" I am talking to.  The room knows "
        .. "what I am talking about. "
        .. "The man in the room does not."
    game_journal.add_txt(lang, "TOPAZ_GEM_TREASURE_k_part3", str)
    game_journal.add_path("@lore;@lore_k_hidden;@lore_k_hidden_esp;@lore_k_hidden_esp_cr;{30}Part 3")
end

-------------------------------------------------------------------------------
