--File: game_journal_english_mylantis_iolite.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "These ^x0000ffBlue Rings^! will bring you fairly deep "
        .. "inside the Iolite Gem Sponge which is in the room below. "
        .. "Once you use these blue rings, your goal is to grow "
        .. "as much as possible until you leave the sponge. "
        .. "Then, you will find a treasure room."
    game_journal.add_txt(lang, "IOLITE_GEM_ENTRANCE_BLUE_part1", str)
    game_journal.add_path("@area;@area_my;@area_my_iolite;{10}What to do")

    local str = "^xff00ffStuck on how to get past the key guards in the Iolite Sponge "
        .. "that guard the red rings?  If so, continue reading this message.\n\n"
        .. "Hint: once you are at the point where you can be right next to "
        .. "the Yellow Key Guards, backtrack to find a Yellow Key. "
        .. "The way you backtrack is important.^!"
    game_journal.add_txt(lang, "IOLITE_GEM_ENTRANCE_BLUE_part2", str)
    game_journal.add_path("@area;@area_my;@area_my_iolite;{20}Key hint")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "It keeps me up at night, thinking about how "
        .. "I can perceive myself as having ESP with other people "
        .. "even though they deny it afterwards.\n\n"
        .. "Here is one possible explanation for it. "
        .. "Science tells us to adopt Occam's Razor: "
        .. "that when confronted with multiple explanations for "
        .. "something, we should adopt the simplest and most "
        .. "compelling one."
    game_journal.add_txt(lang, "IOLITE_GEM_TREASURE_part1", str)
    game_journal.add_path("@lore;@lore_k_hidden;@lore_k_hidden_esp;@lore_k_hidden_esp_mult;{10}Part 1")

    local str = "^x00ff00But maybe we live in a world "
        .. "where there are two explanations for many things. "
        .. "Although one explanation is more compelling, "
        .. "and so we accept that one, "
        .. "the other explanation is somehow equally correct. "
        .. "I am trying to wrap my brain around what exactly "
        .. "the second explanation is, and how it relates "
        .. "to my ESP."
    game_journal.add_txt(lang, "IOLITE_GEM_TREASURE_part2", str)
    game_journal.add_path("@lore;@lore_k_hidden;@lore_k_hidden_esp;@lore_k_hidden_esp_mult;{20}Part 2")
end

-------------------------------------------------------------------------------
