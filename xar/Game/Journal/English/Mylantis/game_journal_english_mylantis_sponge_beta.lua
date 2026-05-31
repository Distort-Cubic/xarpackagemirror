--File: game_journal_english_mylantis_sponge_beta.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Beta Menger Sponge^!. \n\n"
        .. "Inside you can find ^xff00ffMinigun^! and "
        .. "^xff00ffNuke Velocity^! upgrades.\n\n"
        .. "The deeper you go, the more treasure you can find "
        .. "(but this maxes out once you shrink 100 times). "
        .. "However as you go deeper, the area becomes more "
        .. "challenging.\n\n"
        .. "There is a town at depth 100."
    game_journal.add_txt(lang, "SPONGE2", str)
    game_journal.add_path("@area;@area_my;@area_my_sponge_beta;{10}Overview")

    local str = "This is a ^x00ff00Beta Sponge Town^!.\n\n"
        .. "Here there is a waypoint right next to a ^xff00ffJackfruit^!. "
        .. "There is also a Tau Caves Moon here.\n\n"
        .. "You will probably not be able to go much deeper inside this "
        .. "Beta (Menger) Sponge because there are several layers of "
        .. "very deadly monsters beyond this depth. "
        .. "^xff00ffIs it even physically possible to get through those "
        .. "several deadly layers?^!\n\n"
        .. "Note that in this town you can pick up the very rare and "
        .. "very powerful weapon: the ^xff00ffPlasma Hyper Rapid Fire Gun.^!"
    game_journal.add_txt(lang, "SPONGE2_TOWN_PENTHOUSE", str)
    game_journal.add_path("@area;@area_my;@area_my_sponge_beta;{20}Beta sponge town")
end

-------------------------------------------------------------------------------
