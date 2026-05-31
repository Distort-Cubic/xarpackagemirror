--File: game_journal_english_hell_wolf.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Remember: When a Yin Yang monster sees you, "
        .. "it partially blinds you.\n\n"
        .. "Green Yin Yang monsters can be laser and EMP stunned.\n\n"
        .. "Orange Yin Yang monsters can only be laser stunned."
    game_journal.add_txt(lang, "WOLF_FOREST_YINYANG_HINT", str)
    game_journal.add_path("@mon;@mon_yin;{10}Green vs orange")
    
    ---------------------------------------------

    local str = "The ^x00ff00Quasar Drive^! decreases your air drag "
        .. "for 30 seconds and thus allows you to move faster.\n\n"
        .. "It costs ^xff000060^! dark hole ammo.\n\n"
        .. "^xff00ffNote that Rocket Mode must be on to experience the effect.^!";
    game_journal.add_txt(lang, "WOLF_FOREST_WEAPON_MOD_part1", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_4;{30}Control panel;{10}Part 1")

    local str = "However, moving faster slows down the game if your level "
        .. "radius is too large (too many chunks are loaded per second).\n\n"
        .. "Because of this, it is possible to set an ^xff0000alternate level "
        .. "radius^! that is used (for the finest level of detail) "
        .. "when you experience the Quasar Drive effect.\n\n"
        .. "You set that alternate radius here, in the control panel."
    game_journal.add_txt(lang, "WOLF_FOREST_WEAPON_MOD_part2", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_4;{30}Control panel;{20}Part 2")
end

-------------------------------------------------------------------------------
