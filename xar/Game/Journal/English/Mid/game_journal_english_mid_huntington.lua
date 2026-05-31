--File: game_journal_english_mid_huntington.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "HUNTINGTON_PENTHOUSE",
        p.HUNTINGTON_PENTHOUSE)
    game_journal.add_path("@area;@area_mid;@area_mid_orange;@area_mid_orange_hunt;{10}Overview")

    local str = "^xff00ffYou may have discovered this already, "
        .. "but a quick way to complete a Health Tower "
        .. "is to go in from the top with an EMP blast."
    game_journal.add_txt(lang, "HUNTINGTON_TREASURE_health_tower_trick", str)
    game_journal.add_path("@area;@area_nwp;@area_nwp_ht;{10}Quick way in") --Change num?

    game_journal.add_txt_cb(lang, "HUNTINGTON_TREASURE_rejuvenx",
        p.HUNTINGTON_TREASURE_rejuvenx)
    game_journal.add_path("@item;@item_rx;{10}Huntington message")
    game_journal.add_path("@area;@area_mid;@area_mid_orange;@area_mid_orange_hunt;{20}RejuvenX")

    ---------------------------------------------

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Your EMP weapon is very powerful. "
        .. "You probably only need a handful of Radius "
        .. "upgrades for that weapon to be able to save me. "
        .. "However theoretically you could obtain hundreds of Radius "
        .. "upgrades and dominate the Fractal Block World.\n\n"
        .. "Note that the number of Freeze Time upgrades for your EMP "
        .. "should always be AT LEAST 25% (or something close to that) of "
        .. "the number of your EMP Radius upgrades. "
        .. "Otherwise you won't be able to reach the boundary of your "
        .. "EMP blast before it wears off.\n\n"
        .. "One weakness of the EMP is it only damages enemies of your "
        .. "same size. For this reason, you will sometimes want to "
        .. "detonate your EMP before you shrink."
    game_journal.add_txt(lang, "HUNTINGTON_FRIEND_part1", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_gen;{10}Huntington message;{10}Part 1")

    local str = "^x00ff00If you are not planning on traveling "
        .. "a huge distance, but instead you want to spend a long "
        .. "time in one area, then having many EMP Freeze Time "
        .. "upgrades is beneficial.\n\n"
        .. "The secondary fire of the EMP deals damage to enemies. "
        .. "This is useful for getting experience points by flying "
        .. "through hordes of low health enemies."
    game_journal.add_txt(lang, "HUNTINGTON_FRIEND_part2", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_gen;{10}Huntington message;{20}Part 2")

    local str = "^x00ff00In this town of Huntington "
        .. "there is a mountain called Camel's Hump. "
        .. "Getting to the top requires using your EMP. "
        .. "At the top there are several Max Ammo upgrades."
    game_journal.add_txt(lang, "HUNTINGTON_FRIEND_part3", str)
    game_journal.add_path("@area;@area_mid;@area_mid_orange;@area_mid_orange_hunt;{30}Camel's hump")

    ---------------------------------------------

    local str = "There are many places to find ^x00ff00Health Upgrades^! "
        .. "in the world.  Here are some such notable places:\n\n"
        .. "1) Small Black Flowers\n\n"
        .. "2) Small White Flowers\n\n"
        .. "3) Health Towers\n\n"
        .. "4) Large White Flowers."
    game_journal.add_txt(lang, "HUNTINGTON_INFO_LOCATIONS_part1", str)
    game_journal.add_path("@item;@item_health;@item_health_loc;{20}Health upgrades;{10}Part 1")

    local str = "One notable place to find Health Upgrades is in "
        .. "Healing Patches in the Minigun Forest (in I2). "
        .. "When starting out, a good strategy to get stronger quickly is "
        .. "to get to these patches."
    game_journal.add_txt(lang, "HUNTINGTON_INFO_LOCATIONS_part2", str)
    game_journal.add_path("@item;@item_health;@item_health_loc;{20}Health upgrades;{20}Part 2")

    local str = "Here are the ^xff00ffbest^! places to get ^x00ff00Health Upgrades^!:\n\n"
        .. "1) Huntington Towns (you are in one now)\n\n"
        .. "2) Jackfruits (in I3), but you need a strong EMP weapon."
    game_journal.add_txt(lang, "HUNTINGTON_INFO_LOCATIONS_part3", str)
    game_journal.add_path("@item;@item_health;@item_health_loc;{20}Health upgrades;{30}Best places")

    local str = "^x00ff00RejuvenX^! upgrades cause your health to regenerate up to 200%. "
        .. "Here are where you can find these upgrades:\n\n"
        .. "1) Huntington Towns (you are in one now)\n"
        .. "2) Mylantis (the largest structure in the universe)."
    game_journal.add_txt(lang, "HUNTINGTON_INFO_LOCATIONS_rejuvenx", str)
    game_journal.add_path("@item;@item_health;@item_health_loc;{30}RejuvenX")
end

function p.HUNTINGTON_PENTHOUSE(chunk_id)
    --Ignoring chunk_id.
    local str = "This is ^x00ff00Huntington^!."
    if( not game_genesis.enabled() ) then
        str = str .. " There is a ^x00ff00Large Cannon Pyramid^! in this town. \n\n"
            .. "The treasure of this town includes ^x00ff00RejuvenX^!, "
            .. "a special substance which helps your health regenerate up to "
            .. "200%. \n\n"
            .. "There is much more RejuvenX in the planet Mylantis. \n"
            .. "Mylantis is in outer space, and is the largest object "
            .. "in the Xar universe."
    end
    return str
end

function p.HUNTINGTON_TREASURE_rejuvenx(chunk_id)
    --Ignoring chunk_id.
    local str = "^xff00ff"
    if( not game_genesis.enabled() ) then
        str = str .. "Here are 8 upgrades (RejuvenX) to cause your health "
            .. "to regenerate past 100% all the way to 200%. \n\n"
            .. "There is a planet with an enormous amount of "
            .. "these upgrades.\n\n"
            .. "It is called Mylantis.\n\n"
    end
    str = str .. "Mylantis is the largest solid structure in the Xar universe. "
        .. "It can be found by enlarging as much as possible and looking for "
        .. "the giant orange block with an M on it."
    return str
end

-------------------------------------------------------------------------------
