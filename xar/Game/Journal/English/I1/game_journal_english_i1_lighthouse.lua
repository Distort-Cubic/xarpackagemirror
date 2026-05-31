--File: game_journal_english_i1_lighthouse.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Below this lighthouse, deep in the ground, is a "
        .. "basement with a ^x00ff00Golden Yellow Flower^!.\n\n"
        .. "^xff00ffThere is also something very useful in the basement.^!"
    game_journal.add_txt(lang, "LIGHTHOUSE_gold_flower", str)
    game_journal.add_path("@area;@area_i1;@area_i1_bot;@area_i1_bot_light;{10}Overview")

    p.mini_locations()
    
    game_journal.add_txt_cb(lang, "LIGHTHOUSE_INFO_BLACK_CUBE",
        p.LIGHTHOUSE_INFO_BLACK_CUBE)
    game_journal.add_path("@area;@area_mid;@area_mid_mossy;{40}Center of black cubes")

    local str = "^x00ff00Small Minigun Planets^! can be found in Outer Space.\n\n"
        .. "Also, you can find one in the basement of this Lighthouse "
        .. "(under the ground, in the bottom cavern)."
    game_journal.add_txt(lang, "LIGHTHOUSE_INFO_MINIGUN_PLANET", str)
    game_journal.add_path("@area;@area_i1;@area_i1_bot;@area_i1_bot_light;{20}Where to find small minigun planets")

    --Put elsewhere??? (Right now there is no buttercup script).
    local str = "You are next to a "
        .. "^x00ff00Golden Yellow Flower^!. "
        .. "It is a mysterious flower.\n\n"
        .. "With a large chance, each Golden Yellow Flower "
        .. "will have a smaller one of itself nearby.\n\n"
        .. "The Golden Yellow Flower can be "
        .. "distinguished from the Buttercup "
        .. "by the X's it has."
    game_journal.add_txt(lang, "BUTTERCUP_next_to", str)
    game_journal.add_path("@area;@area_mid;@area_mid_gold;{10}Overview")
end

function p.mini_locations()
    local str = "You can find ^x00ff00Minigun Damage^! upgrades in many places. "
        .. "Here are some notable places:\n\n"
        .. "1) Botany Labs\n\n"
        .. "2) The Minigun Forest and the Guerrilla Jungle in I2."
    game_journal.add_txt(lang, "LIGHTHOUSE_INFO_LOCATIONS_damage1", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_loc;{20}Damage upgrades;{10}Part 1")

    local str = "These are the ^xff00ffbest^! places to find "
        .. "^x00ff00Minigun Damage^! upgrades:\n\n"
        .. "1) Desert Flowers."
    game_journal.add_txt(lang, "LIGHTHOUSE_INFO_LOCATIONS_damage2", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_loc;{20}Damage upgrades;{20}Best places")

    local str = "Some places to find ^x00ff00Minigun Max Ammo^! upgrades:\n\n"
        .. "1) Minigun Planets, Williston Entrance Tubes "
        .. "(that are green at the top), "
        .. "Earthy Basements, and Hell Flowers\n\n"
        .. "2) Yellow Cubes in Outer Mantle of an Orange\n\n"
        .. "3) Giant Red Room of a Blue Bubble \n\n"
        .. "4) Great Spiders (they drop one when they are killed). "
        .. "You can find these in the Orc Layer Caves of a Botany Lab."
    game_journal.add_txt(lang, "LIGHTHOUSE_INFO_LOCATIONS_max_ammo1", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_loc;{30}Max ammo upgrades;{10}Part 1")

    local str = "These are the ^xff00ffbest^! places to find ^x00ff00Minigun Max Ammo^! upgrades:\n\n"
        .. "1) The Great Spiders in the Orc Layer Caves of a Botany Lab."
    game_journal.add_txt(lang, "LIGHTHOUSE_INFO_LOCATIONS_max_ammo2", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_loc;{30}Max ammo upgrades;{20}Best places")

    local str = "Some places to find ^x00ff00Minigun Velocity^! upgrades:\n\n"
        .. "1) Lighthouses (you are in one now)\n\n"
        .. "2) Hell Flowers."
    game_journal.add_txt(lang, "LIGHTHOUSE_INFO_LOCATIONS_vel", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_loc;{40}Velocity upgrades")

    str = "Some places to find ^x00ff00Minigun Fire Rate^! upgrades:\n\n"
        .. "1) ^xff00ffAbove^! the treasure room of a Health Tower \n\n"
        .. "2) Minigun Planets\n\n"
        .. "3) Williston Entrance Tubes (that are green at the top)\n\n"
        .. "4) In the fields surrounding Williston Cities\n\n"
        .. "5) Earthy Basements (in the I2 Minigun Ammo Forest)\n\n"
        .. "6) Fire Rate Moons\n\n"
        .. "7) Hell Flowers."
    game_journal.add_txt(lang, "LIGHTHOUSE_INFO_LOCATIONS_fire_rate", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_loc;{50}Fire rate upgrades")

    local str = "^xff00ffMinigun Super^! upgrades "
        .. "are some of the most rare upgrades in the universe. "
        .. "You can find one in the following place:\n\n"
        .. "1) The Central Core Treasure Room #1 "
        .. "(which is at the top of the Mylantis Top City)."
    game_journal.add_txt(lang, "LIGHTHOUSE_INFO_LOCATIONS_super", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_loc;{60}Super damage upgrades")

    local str = "There are many places to find ^x00ff00Minigun ammo^! (bullets) "
        .. "in the world. However a notable place is the "
        .. "I2 Minigun Ammo Forest. "
        .. "Here there are purple structures which contain several "
        .. "Spider Lords that you can use to get many bullets."
    game_journal.add_txt(lang, "LIGHTHOUSE_INFO_LOCATIONS_ammo", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_loc;{70}Ammo")
end

function p.LIGHTHOUSE_INFO_BLACK_CUBE(chunk_id)
    --Ignoring chunk_id.
    local str = "The ^x00ff00Black Cubes^! within ^x00ff00Mossy Air^! "
        .. "are more than just rocks with stuff growing on their sides.\n\n"
        .. "If you shrink enough and fly into them, there is a huge cavity "
        .. "in the center."
    if( not game_genesis.enabled() ) then
        str = str .. " (There is also an EMP Radius upgrade and a couple of rail upgrades).^!"
    end
    return str
end

-------------------------------------------------------------------------------
