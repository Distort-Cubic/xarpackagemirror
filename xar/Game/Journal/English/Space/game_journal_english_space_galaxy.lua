--File: game_journal_english_space_galaxy.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "You are outside the star disc of this galaxy cube.\n\n"
        .. "In order to shrink and explore the solar systems "
        .. "of this galaxy more, you must "
        .. "go to one of the 4 vertical edges of this galaxy cube and shrink.\n\n"
        .. "Or you could engage in intergalactic travel "
        .. "(assuming this Galaxy Cube is in standard outer space). "
        .. "To do this, exit the galaxy cube and continue to enlarge. "
        .. "You can quickly enlarge into ^x00ff00Outer Space Level 2^!. "
        .. "To enlarge one more time to enter Outer Space Level 1, you must "
        .. "enlarge inside a giant red cube with a \"1\" on it.\n\n"
        .. "If you enlarge all the way into Outer Space Level 0, you can fly over "
        .. "to Mylantis, which is an orange cube with an \"M\" on it. "
        .. "It can be argued that Mylantis is the center of the universe."
    game_journal.add_txt(lang, "SPACE_GALAXY_OUTSIDE_DISC_BASE", str)
    game_journal.add_path("@area;@area_space;@area_space_galaxy;{20}Outside galactic disc") --Change num
end

-------------------------------------------------------------------------------
