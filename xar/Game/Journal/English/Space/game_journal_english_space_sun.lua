--File: game_journal_english_space_sun.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    p.rocket_locations()
end

function p.rocket_locations()
    local str = "You can find ^x00ff00Rocket Damage^! upgrades in many places. "
        .. "Here are some such locations:\n\n"
        .. "1) Yellow Bee Cubes inside Mossy Air (3 damage)\n\n"
        .. "2) Stoney Sanctuaries\n\n"
        .. "3) Jericho Towns\n\n"
        .. "4) Orange Crust\n\n"
        .. "5) Yellow Rooms in Blue Bubbles\n\n"
        .. "6) ^xff00ffI3 Main Forest^!."
    game_journal.add_txt(lang, "SPACE_SUN_INFO_LOCATIONS_damage", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_loc;{30}Damage upgrades")

    local str = "You can find ^x00ff00Rocket Max Ammo^! upgrades in several places. "
        .. "Here are some such locations:\n\n"
        .. "1) Stoney Sanctuaries\n\n"
        .. "2) top of Apple Trees, or their Yellow Apples\n\n"
        .. "3) Red Caves in Richmond Towns\n\n"
        .. "4) Yellow Rooms in Blue Bubbles\n\n"
        .. "5) Danville Towns."
    game_journal.add_txt(lang, "SPACE_SUN_INFO_LOCATIONS_max_ammo", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_loc;{40}Max ammo upgrades")

    local str = "^x00ff00Rocket Velocity^! "
        .. "upgrades can be found in many places. "
        .. "Here are some such locations:\n\n"
        .. "1) Stoney Sanctuaries\n\n"
        .. "2) Yellow Rooms in Blue Bubbles.\n\n"
        .. "3) Jericho Towns\n\n"
        .. "4) Yellow Caves in Outer Mantle of Oranges\n\n"
        .. "5) top of buildings in Williston Cities\n\n"
        .. "6) Beholder Caves in Botany Labs\n\n"
        .. "7) Spruce Trees (in I2)\n\n"
        .. "8) ^xff00ffI3 Main Forest^!."
    game_journal.add_txt(lang, "SPACE_SUN_INFO_LOCATIONS_vel", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_loc;{50}Velocity upgrades")

    local str = "^x00ff00Rocket Radius^! "
        .. "upgrades can be found in many places. "
        .. "Once you max out these upgrades, when you pick up a radius upgrade "
        .. "it will randomly give you a Rocket Damage, Max Ammo, "
        .. "or Velocity upgrade. "
        .. "Here are some such locations of these radius upgrades:\n\n"
        .. "1) Stoney Churches\n\n"
        .. "2) Yellow Rooms in Blue Bubbles.\n\n"
        .. "3) Jericho Towns\n\n"
        .. "4) Spruce Trees (in I2)\n\n"
        .. "4) ^xff00ffBlackberries^!\n\n"
        .. "5) ^xff00ffSuns (you are in one now)."
    game_journal.add_txt(lang, "SPACE_SUN_INFO_LOCATIONS_radius", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_loc;{60}Radius upgrades")

    local str = "There are many places to find ^x00ff00Rocket ammo^! (rockets) "
        .. "in the world. Here are some such places:\n\n"
        .. "1) Spruce Trees (in I2)\n\n"
        .. "2) The yellow lattice in the Yellow Cubes inside Stoney Air\n\n"
        .. "3) Carrots (in I3)."
    game_journal.add_txt(lang, "SPACE_SUN_INFO_LOCATIONS_ammo1", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_loc;{70}Ammo;{10}Part 1")
    
    local str = "Here are some of the ^xff00ffbest^! places to find rockets:\n\n"
        .. "1) Pumpkins. You can find these in Dandelion Patches (in I3)."
    game_journal.add_txt(lang, "SPACE_SUN_INFO_LOCATIONS_ammo2", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_loc;{70}Ammo;{20}Best places")
end

-------------------------------------------------------------------------------
