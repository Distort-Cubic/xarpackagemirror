--File: game_journal_english_i3_red_maze_flower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from TON 618:\n\n"
        .. "^x0000ffI hacked into the code of a Blackberry! "
        .. "In the chamber where the Yellow Key can be found, "
        .. "I added out-only waypoints to the 4 corners "
        .. "of the ground of that room "
        .. "(the room with Pink Trees on the ground). "
        .. "Now someone can take the Yellow Key "
        .. "and go to one of the waypoints and "
        .. "travel anywhere with the key!  Hahahaha!"
    game_journal.add_txt(lang, "RED_MAZE_TREASURE", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_rmf;{10}Secret message")
    game_journal.add_path("@quest;@quest_mid;@quest_mid_blackberry;{30}The secret itself")
end

-------------------------------------------------------------------------------
