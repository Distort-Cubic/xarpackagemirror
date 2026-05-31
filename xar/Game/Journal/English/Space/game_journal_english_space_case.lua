--File: game_journal_english_space_case.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "At the top of this shaft is the edge of the world. "
        .. "Finding the boundary of the universe is a real rush for "
        .. "some people. "
        .. "They want to run their hands along the walls of the "
        .. "prison that contains us. "
        .. "Like kicking your legs in a sleeping bag to feel that "
        .. "they cannot move.\n\n"
        .. "But to reach the edge of the universe, you must pass through "
        .. "3 challenges in this shaft:\n\n"
        .. "Challenge 1: Finding a Yellow Key.\n\n"
        .. "Challenge 2: The Wall of Pain.\n\n"
        .. "Challenge 3: The hidden waypoint."
    game_journal.add_txt(lang, "SPACE_CASE_ENTRANCE", str)
    game_journal.add_path("@area;@area_space;@area_space_edge;{10}Three challenges")

    local str = "You got past the second challenge (The Wall of Pain)!\n\n"
        .. "Now you just have one more challenge: ^x00ff00The Hidden Waypoint^!.\n\n"
        .. "You need a green key (with combo 222444) to get past the keyguard nearby. "
        .. "There is such a key in the next room. "
        .. "However once you get the key, you will need to find a waypoint "
        .. "to teleport back here to use the key.\n\n"
        .. "Small White Flowers, Small Black Flowers, Alpha Cubes, etc are all "
        .. "part of the \"No Waypoint\" zone of the world, where there is supposedly "
        .. "no waypoint.\n\n"
        .. "However there IS a waypoint. You can find one in the ^xff00ffSecret Purple House "
        .. "At The Precipice Of Oblivion^!. "
        .. "These houses can be found in places where you might expect there is no way "
        .. "to enlarge out of them."
    game_journal.add_txt(lang, "SPACE_CASE_BEFORE_3", str)
    game_journal.add_path("@area;@area_space;@area_space_edge;{20}Third challenge: the hidden waypoint")
end

-------------------------------------------------------------------------------
