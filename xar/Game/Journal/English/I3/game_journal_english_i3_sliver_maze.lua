--File: game_journal_english_i3_sliver_maze.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Deep Sliver Maze.^!\n\n"
        .. "Remember to freeze Slivers with your Laser.\n\n"
        .. "You must navigate the maze.  "
        .. "There are smaller mazes that allow you to take shortcuts, "
        .. "but be careful about going on too many tangents.\n\n"
        .. "The treasure room contains the rare ^xff00ffFreeze Ray^! weapon mode "
        .. "for your Laser weapon."
    game_journal.add_txt(lang, "SLIVER_MAZE_DEEP_ENTRANCE", str)
    game_journal.add_path("@area;@area_i3;@area_i3_main_forest;@area_i3_main_forest_river;@area_i3_main_forest_river_sliver;{10}Overview")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I kept making these \"Universe Interface Errors\".\n\n"
        .. "I swear I was not making mistakes but the universe seemed to "
        .. "claim that I was. "
        .. "I wondered how that was possible.\n\n"
        .. "My conclusion was that although we seem to be in a single universe, "
        .. "we are actually in a multiverse, and when I was unwell, my own universe "
        .. "was far removed from the other universes.\n\n"
        .. "A tale you have heard me say before: to unify these universes it is crucial "
        .. "to first extract the cores of these universes and then unify those cores. "
        .. "Alas, Inner Botany theory is at the crux of my problems."
    game_journal.add_txt(lang, "SLIVER_MAZE_DEEP_TREASURE", str)
    game_journal.add_path("@yang;@yang_trapped;@yang_trapped_error;@yang_trapped_error_unif")
end

-------------------------------------------------------------------------------
