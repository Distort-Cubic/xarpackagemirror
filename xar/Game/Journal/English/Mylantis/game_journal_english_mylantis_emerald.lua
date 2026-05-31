--File: game_journal_english_mylantis_emerald.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "These ^x0000ffBlue Rings^! will bring you fairly deep "
        .. "inside the Emerald Gem Sponge which is in the room below. "
        .. "Once you use these blue rings, your goal is to grow "
        .. "as much as possible until you leave the sponge. "
        .. "Then, you will find a treasure room."
    game_journal.add_txt(lang, "EMERALD_GEM_ENTRANCE_BLUE_part1", str)
    game_journal.add_path("@area;@area_my;@area_my_emerald;{10}What to do")

    str = "^xff00ffStuck on how to get past the key guards in the Emerald Sponge "
        .. "that guard the red rings?  If so, continue reading this message.\n\n"
        .. "Hint: once you are at the point where you can be right next to "
        .. "the Yellow Key Guards, backtrack to find a Yellow Key. "
        .. "The way you backtrack is important.^!"
    game_journal.add_txt(lang, "EMERALD_GEM_ENTRANCE_BLUE_part2", str)
    game_journal.add_path("@area;@area_my;@area_my_emerald;{20}Key hint")

    local str = "If you go back inside "
        .. "the sponge and shrink, you will at some point find checkered blocks. "
        .. "These are ^x00ff00Emerald Cities^!. "
        .. "You can use the Green Key here to gain access "
        .. "to these cities."
    game_journal.add_txt(lang, "EMERALD_GEM_TREASURE", str)
    game_journal.add_path("@area;@area_my;@area_my_emerald;{30}Where to find emerald cities")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Many search for the center of the universe, "
        .. "but I think the whole thing is inside out. "
        .. "There are many cores, and they grow out, "
        .. "not inward. "
        .. "An inner core is like an onion: cores of "
        .. "deeper universes have more layers.\n\n"
        .. "So instead of asking \"what is the center of the universe\" "
        .. "we should be asking \"what are the outer layers of "
        .. "the inner cores?\""
    game_journal.add_txt(lang, "EMERALD_GEM_CITY_PENTHOUSE_k_part1", str)
    game_journal.add_path("@lore;@lore_ic;@lore_ic_grow;{10}Part 1")

    local str = "^x00ff00We are aware of the comparability phenomenon: "
        .. "that inner cores taken from different universes "
        .. "are comparable (even if their universes are totally different).\n\n"
        .. "So we can amalgamate inner cores from various universes together. "
        .. "This is the \"^xff00ffmosaic^!^x00ff00\" project. The program to join inner cores "
        .. "together from many universes into what we call "
        .. "^xff00ffThe Omega Core^!^x00ff00."
    game_journal.add_txt(lang, "EMERALD_GEM_CITY_PENTHOUSE_k_part2", str)
    game_journal.add_path("@lore;@lore_ic;@lore_ic_grow;{20}Part 2")
end

-------------------------------------------------------------------------------
