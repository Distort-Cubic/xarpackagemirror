--File: game_journal_english_mid_stoney_air.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "You are in ^x00ff00Stoney Air^!. "
        .. "This is part of the \"^x00ff00Main Branch^!\". "
        .. "If you continue all the way down the Main Branch, "
        .. "you will find an Inner Core.\n\n"
        .. "To continue further down the Main Branch, keep "
        .. "shrinking until you can enter one of the Yellow Cubes.\n\n"
        .. "You can shrink in a Green Shrink Box.\n\n"
        .. "^xff0000It is a little slow to grow in Stoney Air.^!"
    game_journal.add_txt(lang, "STONEY_AIR", str)
    game_journal.add_path("@area;@area_mid;@area_mid_stoney;{10}Overview")
    game_journal.add_path("@area;@area_mid;@area_mid_mb;{20}Stoney air to yellow cube")

    local str = "When you shrink enough so you can enter a Yellow Cube "
        .. "(but you have not shrunk beyond that point), "
        .. "fly around inside the Yellow Cube until you find a "
        .. "^x00ff00Stoney Sanctuary^!.\n\n"
        .. "Inside such a sanctuary is a library that explains more about the Main Branch."
    game_journal.add_txt(lang, "STONEY_AIR_CAVE_1_TREASURE", str)
    game_journal.add_path("@area;@area_mid;@area_mid_mb;{30}Yellow cube to stoney sanctuary")
    game_journal.add_path("@quest;@quest_mid;@quest_mid_san")
    
    local str = "Message from TON 618:\n\n"
        .. "^x0000ffWant to know a pretty wild secret? "
        .. "You know how some ^xff00ffTau Cave Moons^x0000ff are of the "
        .. "\"secret\" type, which you can tell because the waypoint chunk "
        .. "on the surface has a blue square at the bottom.\n\n"
        .. "There is a quick way you can tell if a block is "
        .. "a normal Tau Cave Moon or a Secret Tau Cave Moon. "
        .. "Get close to the block and look at the word "
        .. "\"moon\". If it is of the secret type, the second "
        .. "letter O will have a little blue dot in the center.\n\n"
        .. "Hahaha!  Wahahahaha ha ha HAA HAAA!!!"
    game_journal.add_txt(lang, "STONEY_AIR_TAU_MOON_HINT", str)
    game_journal.add_path("@area;@area_mid;@area_mid_stoney;@area_mid_stoney_cave;{10}Hint about secret tau cave moons")
    game_journal.add_path("@area;@area_space;@area_space_moon;@area_space_moon_tau;{10}How to identify secret version")
end

-------------------------------------------------------------------------------
