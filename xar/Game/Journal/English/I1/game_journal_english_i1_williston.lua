--File: game_journal_english_i1_williston_castle.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Sometimes one of these Williston buildings will have a "
        .. "Railgun Max Ammo upgrade instead of Rocket "
        .. "upgrades. The probability that there will be "
        .. "a Railgun upgrade is proportional "
        .. "to the number of Vulcan rooms in the building."
    game_journal.add_txt(lang, "WILLISTON_TOP_1_railgun", str)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_city;{10}Railgun top of buildings")

    local str = "Notice that the secondary fire of the Rocket Launcher "
        .. "does ^x00ff00four times^! "
        .. "as much direct damage as the primary. \n\n"
        .. "However, the projectile travels at ^xff0000one eighth^! "
        .. "the speed of the primary."
    game_journal.add_txt(lang, "WILLISTON_TOP_1_rocket", str)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_city;{20}Reminder about rockets")

    game_journal.add_txt_cb(lang, "WILLISTON_CENTER_navigation",
        p.WILLISTON_CENTER_navigation)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;{10}Overview")

    local str = "You can sometimes find ^x00ff00Bedrooms^! on the roofs of some "
        .. "of the buildings here. "
        .. "You can sleep in these places (advance the game time)."
    game_journal.add_txt(lang, "WILLISTON_CENTER_bedroom", str)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_city;{30}Bedroom top of buildings")

    local str = "You have probably noticed that when you are larger than a Williston Field, "
        .. "to enter it you can go down a tube which allows you to shrink. "
        .. "There are four types of tubes:\n\n"
        .. "^x00ff00Short tubes^!: "
        .. "These allow you to shrink directly. \n\n"
        .. "^x00ff00Tubes with a white top^!: "
        .. "These give you health upgrades at the end.\n\n"
        .. "^x00ff00Tubes with a green top^!: "
        .. "These give you a Minigun Max Ammo upgrade!\n\n"
        .. "^x00ff00Red tubes^!: "
        .. "These allow you to enter AND EXIT."
    game_journal.add_txt(lang, "WILLISTON_CENTER_tubes", str)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_field;{10}Entering fields from above")

    local str = "Message from KY Cygni: \n\n"
        .. "^x0000ffThe excavation of the "
        .. "Infinity Flower is under way.\n\n"
        .. "We have uncovered deeper parts of the flower "
        .. "and have placed samples into the Bristol towns. "
        .. "So, probably the best way to explore the "
        .. "deeper parts of this flower is to "
        .. "visit a Bristol town."
    game_journal.add_txt(lang, "WILLISTON_MAP_bristol_part1", str)
    game_journal.add_path("@quest;@quest_i1;@quest_i1_bristol")

    local str = "^x0000ffThe Mylantis Council has proclaimed that Bristol Towns are part of "
        .. "the ^x00ff00Main Branch^!^x0000ff. "
        .. "These towns are the canonical way to enter Group #2 of the Infinity Flower (I2)."
    game_journal.add_txt(lang, "WILLISTON_MAP_bristol_part2", str)
    game_journal.add_path("@area;@area_i1;@area_i1_mb;{20}Infinity flower to bristol")

    game_journal.add_txt_cb(lang, "WILLISTON_MAP_williston_caves",
        p.WILLISTON_MAP_williston_caves)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_field;{50}Williston caves")
    
    local str = "If you go into a nearby ^x00ff00Williston Field^!, "
        .. "on the ground you will see these checkered cubes "
        .. "(like in this picture).\n\n"
        .. "Each such block is a ^x00ff00Bristol Town^!."
    game_journal.add_txt(lang, "WILLISTON_MAP_bristol_part3", str)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_field;{30}Bristol")

    game_journal.add_txt_cb(lang, "WILLISTON_MAP_shrink",
        p.WILLISTON_MAP_shrink);
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_field;{20}Shrinking in willison fields")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "What is so important about a ^xffffffKey to the Universe^!"
        .. "^x00ff00, and why do I think that would save me? "
        .. "What is the relationship between Keys to the Universe and "
        .. "^xffffffInner Cores^x00ff00?\n\n"
        .. "The analogy I gather is that an Inner Core is like an "
        .. "ultra low entropy device.\n\n"
        .. "So, it is like a pure source of energy. "
        .. "On the other hand, a Key to the Universe is like an "
        .. "ATP molecule from biology: it can transmit energy "
        .. "in a usable form and it is almost like a monetary currency."
    game_journal.add_txt(lang, "WILLISTON_FRIEND_part1", str)
    game_journal.add_path("@lore;@lore_ic;@lore_ic_key;{10}Relationship to inner cores;{10}Part 1")

    local str = "^x00ff00If my problem was physical, "
        .. "then perhaps to save me you "
        .. "would need to find one million dollars. "
        .. "However instead my problem is metaphysical, so that is "
        .. "why you need a Key to the Universe."
    game_journal.add_txt(lang, "WILLISTON_FRIEND_part2", str)
    game_journal.add_path("@lore;@lore_ic;@lore_ic_key;{10}Relationship to inner cores;{20}Part 2")

    local str = "^x00ff00It is unclear to me if Keys to the Universe "
        .. "are created from Inner Cores via Re-Creation theory, "
        .. "or if instead their pairing with Inner Cores is a "
        .. "deeper aspect of the clockwork architecture."
    game_journal.add_txt(lang, "WILLISTON_FRIEND_part3", str)
    game_journal.add_path("@lore;@lore_ic;@lore_ic_key;{10}Relationship to inner cores;{30}Part 3")

    local str = "Message from TON 618:\n\n"
        .. "^x0000ffSirius B thinks he has trapped all adventurers "
        .. "that are spawned inside Ying Flowers!  Hahah!  I just planted "
        .. "some Oranges in all Ying Flowers! "
        .. "I bet he will never find out!!!\n\n"
        .. "I planted them in the air surrounding the "
        .. "caves in the 3x3 islands "
        .. "of a Ying World. This air contains Baby Spiders. "
        .. "Those 3x3 islands are also called Ying Cave Islands."
    game_journal.add_txt(lang, "WILLISTON_CENTER_SECRET", str)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_city;{40}Secret message")
    game_journal.add_path("@area;@area_yw;@area_yw_island;@area_yw_island_small;@area_yw_island_small_spider")

    local str = "This is the ^xff00ffSecret Cave of Jerichos^!.\n\n"
        .. "^x00ff00Jericho Towns^! and ^x00ff00Jumbo Yellow Flowers^! "
        .. "are common here.\n\n"
        .. "^x00ff00Jackfruits^! and ^x00ff00Red Maze Flowers^! "
        .. "also grow here, but are scarce.\n\n"
        .. "You can only get to this secret cave you are in now "
        .. "by going down a modified Purple Well. "
        .. "These modified Purple Wells look just like "
        .. "the regular Purple Wells, "
        .. "except there is no Pink Sphere at the top."
    game_journal.add_txt(lang, "WILLISTON_SECRET_CAVE_WP_overview", str)
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_field;{60}Secret cave of jerichos")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Do you remember that in our Junior year of college "
        .. "we went to that halloween party? "
        .. "You dressed as a suave G-man (government man). "
        .. "Maybe that was foreshadowing your current job?\n\n"
        .. "I dressed as a cat. I know that is stereotypical, "
        .. "but I suppose I am attracted to canonical things. "
        .. "You asked if it was my first cat outfit and I said yes: "
        .. "\"cat 1.0\". I should tell you that I have been working on "
        .. "a \"cat 2.0\" outfit, but it has been stuck in "
        .. "development hell for years."
    game_journal.add_txt(lang, "WILLISTON_SECRET_CAVE_WP_k", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_halloween")
end

function p.WILLISTON_CENTER_navigation(chunk_id)
    --Ignoring chunk_id.
    local str = "This is a ^x00ff00Williston City^!! \n\n"
        .. "The surrounding fields (separated by walls) are called "
        .. "^x00ff00Williston Fields^!.  To get back to the "
        .. "^x00ff00Main Branch^!, go into a Williston Field "
        .. "and shrink to enter a Bristol Town; "
        .. "Bristol Towns look like checkered cubes with the word "
        .. "\"Bristol\" on them."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nMost buildings in this city have "
            .. "Rocket Velocity upgrades. "
            .. "However, the taller buildings are more likely to have "
            .. "Railgun Max Ammo upgrades."
    end
    return str
end

function p.WILLISTON_MAP_williston_caves(chunk_id)
    --Ignoring chunk_id.
    local str = "In a Williston Field, in the ground you can sometime find entrances "
        .. "to ^x00ff00Williston Caves^!. "
        .. "These have 3 levels. "
        .. "At the bottom somewhere is a large treasure room with a "
        .. "^xffff00list of the locations of all I1 Trophies^!."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nHaving a strong Railgun helps here. ";
    end
    return str
end

function p.WILLISTON_MAP_shrink(chunk_id)
    --Ignoring chunk_id.
    local str = "To enter a Bristol town, you must shrink. "
        .. "Shrinking in this area can take a little work.\n\n"
        .. "One way to shrink is with an ^x00ff00Apple Tree^!. ";
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nAnother way to shrink is with these vertical shafts "
            .. "with Locusts inside. The best way through these shafts "
            .. "is using your Rocket weapon."
    end
    return str
end

-------------------------------------------------------------------------------
