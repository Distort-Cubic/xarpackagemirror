--File: game_journal_english_yw_jumbo_yellow_flower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "My mind is now so entrenched and trapped in this fractal world. "
        .. "Releasing me is no easy task. It requires energy and skill beyond "
        .. "you or me.\n\n"
        .. "But this type of task is not uncommon in the fractal universe, "
        .. "and it is possible.\n\n"
        .. "You just need to gain access to this power. "
        .. "That is why you need a Key to the Universe. "
        .. "It gives you access to that level of fractal power which is "
        .. "required to release me from this place.\n\n"
        .. "Once you simply touch such a key, we can immediately execute "
        .. "the command to save me. "
    game_journal.add_txt(lang, "JUMBO_YELLOW_FLOWER_SPECIAL_k", str)
    game_journal.add_path("@lore;@lore_k_plight;{20}A key to the universe can save an entrenched mind")

    ---------------------------------------------

    local str = "You can find ^x00ff00Plasma Damage^! upgrades in many places. "
        .. "Note: see the column about Plasma Velocity upgrades. "
        .. "Some places to find these damage upgrades:\n\n"
        .. "1) Small Yellow Flowers\n\n"
        .. "2) Jumbo Yellow Flowers (you are in one now)\n\n"
        .. "3) I3 Main Forest.\n\n"
        .. "4) Jackfruits. "
    game_journal.add_txt(lang, "JUMBO_YELLOW_FLOWER_INFO_LOCATIONS_damage", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_loc;{20}Damage upgrades")

    local str = "You can find ^x00ff00Plasma Regeneration^! upgrades in many places. "
        .. "Note: see the column about Plasma Velocity upgrades. "
    game_journal.add_txt(lang, "JUMBO_YELLOW_FLOWER_INFO_LOCATIONS_regen", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_loc;{30}Ammo regen upgrades")

    str = "You can find ^x00ff00Plasma Max Ammo^! upgrades in many places. "
        .. "Note: see the column about Plasma Velocity upgrades. "
    game_journal.add_txt(lang, "JUMBO_YELLOW_FLOWER_INFO_LOCATIONS_max_ammo", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_loc;{40}Max ammo upgrades")

    local str = "You can find ^x00ff00Plasma Velocity^! upgrades in many places. "
        .. "Once you max out these upgrades, each Velocity upgrade you pick up "
        .. "will randomly be either a Plasma Damage, Regeneration, or Max Ammo upgrade. "
        .. "These Velocity upgrades are the most common way of getting normal "
        .. "Plasma upgrades.\n\n"
        .. "You can find these Velocity upgrades in ^x00ff00Buttercups^!. "
        .. "You can find Buttercups in 1) Tau Caves, 2) the Black Cubes in Mossy Air, and 3) Botany Labs. ";
    game_journal.add_txt(lang, "JUMBO_YELLOW_FLOWER_INFO_LOCATIONS_vel1", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_loc;{50}Velocity upgrades;{10}Part 1")

    local str = "These are the ^xff00ffbest^! places to find ^x00ff00Plasma Velocity^! upgrades:\n\n"
        .. "1) The Orc Caves in Botany Labs. "
    game_journal.add_txt(lang, "JUMBO_YELLOW_FLOWER_INFO_LOCATIONS_vel2", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_loc;{50}Velocity upgrades;{20}Best places")

    local str = "^xff00ffPlasma Fire Rate^! upgrades "
        .. "are some of the most rare upgrades in the universe. "
        .. "You can find some in the following places:\n\n"
        .. "1) Your EMERGENCY waypoint room\n\n"
        .. "2) The storage room below the 8 nukes in the Mylantis Top City\n\n"
        .. "3) The Central Core Treasure Room #1 "
        .. "(which is at the top of the Mylantis Top City)\n\n"
        .. "4) ^xff00ffFire Rate Moons^!. "
    game_journal.add_txt(lang, "JUMBO_YELLOW_FLOWER_INFO_LOCATIONS_fire_rate", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_loc;{60}Fire rate")

    local str = "There are many places to find ^x00ff00Plasma ammo^! "
        .. "in the world. However, a place where you can find Plasma "
        .. "ammo next to a waypoint is at the top of Camel's Hump in Huntington. "
    game_journal.add_txt(lang, "JUMBO_YELLOW_FLOWER_INFO_LOCATIONS_ammo", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_loc;{70}Ammo")
end

-------------------------------------------------------------------------------
