--File: game_journal_english_nwp_health_tower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "The Fractal Block World is changing the neural pathway for my ear. "
        .. "With this new alteration, I was able to hear two stellar mass objects "
        .. "talking about part of the ^xff00ffMain Branch^x00ff00 that is "
        .. "\"^xff00ffAn Orange^x00ff00\".\n\n"
        .. "To go down the Main Branch, you must penetrate the Outer Crust "
        .. "of the Orange and make your way into the Outer Mantle of the Orange "
        .. "(where you must find a Blue Bubble)."
    game_journal.add_txt(lang, "HEALTH_TOWER_TREASURE_k_1_part1", str)
    game_journal.add_path("@area;@area_nwp;@area_nwp_ht;{20}Message about the main branch and oranges;{10}Part 1")
    game_journal.add_path("@quest;@quest_mid;@quest_mid_tau_shrink;{20}Version 2: oranges;{10}Part 1")

    local str = "^x00ff00"
        .. "The Outer Crust is very thick and is filled almost exclusively "
        .. "with Rebel monsters (that drop Cannon ammo). "
        .. "So, to penetrate through the Outer Crust it would be helpful "
        .. "if your Cannon weapon can kill these monsters in one shot.\n\n"
        .. "^xff00ffA good place to improve your Cannon weapon "
        .. "is in Richmond Towns^x00ff00 "
        .. "(both in their penthouses and in their sewers).\n\n"
        .. "Please save me!"
    game_journal.add_txt(lang, "HEALTH_TOWER_TREASURE_k_1_part2", str)
    game_journal.add_path("@area;@area_nwp;@area_nwp_ht;{20}Message about the main branch and oranges;{20}Part 2")
    game_journal.add_path("@quest;@quest_mid;@quest_mid_tau_shrink;{20}Version 2: oranges;{20}Part 2")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Although I am drawn to the Fractal Block World of Xar, "
        .. "it has expanded my mind to an extent that I feel "
        .. "no longer human.  I still want to be human, and "
        .. "I think I liked who I was as a human, although "
        .. "I am having trouble remembering who I was exactly. "
        .. "My mind was pulled into the hidden world, "
        .. "shrinking and shrinking, "
        .. "like falling deep into a hole, and as I fall I "
        .. "see myself standing by the side of the hole, "
        .. "getting blurrier and blurrier."
    game_journal.add_txt(lang, "HEALTH_TOWER_TREASURE_k_2_part1", str)
    game_journal.add_path("@lore;@lore_k_plight;{50}Falling into a hole;{10}Part 1")

    local str = "^x00ff00This world has many mysteries and dark "
        .. "corners.  The monsters I can see are scary enough. "
        .. "However even more I fear what is hiding "
        .. "in the dark corners of this world. "
        .. "It would be presumptuous to say there is "
        .. "nothing more to be afraid of."
    game_journal.add_txt(lang, "HEALTH_TOWER_TREASURE_k_2_part2", str)
    game_journal.add_path("@lore;@lore_k_plight;{50}Falling into a hole;{20}Part 2")

    local str = "^x00ff00I am not sure if I am being paranoid, "
        .. "but I do not trust the people I work with."
    game_journal.add_txt(lang, "HEALTH_TOWER_TREASURE_k_2_part3", str)
    game_journal.add_path("@lore;@lore_k_plight;{50}Falling into a hole;{30}Part 3")
end

-------------------------------------------------------------------------------
