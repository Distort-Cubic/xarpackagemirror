--File: game_journal_english_yw_ying_forest_air.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^xff00ffBehind some pictures there are secrets!^!"
        .. "\n\nThis picture is of my parents' house, from 1905!"
    game_journal.add_txt(lang, "YING_FOREST_AIR_PLATFORM_picture", str)
    --Keeping it non-recordable.

    local str = "In the basement of this gray cube (Imp Cube) "
        .. "there is a room filled with Ying Trees.\n\n"
        .. "^xff00ffIn the corners of that room are useful "
        .. "totem poles. They contain the same message.^!"
    game_journal.add_txt(lang, "YING_FOREST_AIR_PLATFORM_1_corner_hint", str)
    game_journal.add_path("@area;@area_yw;@area_yw_forest;@area_yw_forest_air;{10}Gray cube;{10}Corner hint;{10}Where to find hint;{10}Version 1")

    local str = "Message from Rigel:\n\n"
        .. "^x0000ffListen up young one and hear the tale of the "
        .. "goblins and the imps. Long ago, they had a war "
        .. "in the Ying World.  The goblins banished the imps "
        .. "from the trees and into these cement cubes "
        .. "(you are in one now). The fractal air is filled with "
        .. "these prisons. "
        .. "When the imps were banished, however, they took "
        .. "much of the gold from the Ying World with them. "
        .. "This is the legend of how imps have gold but goblins have none. "
        .. "In other parts of the fractal-verse, "
        .. "goblins and imps live peacefully together, "
        .. "but still only imps have gold.^!"
    game_journal.add_txt(lang, "YING_FOREST_AIR_PLATFORM_1_rigel", str)
    game_journal.add_path("@lore;@lore_random;@lore_random_rigel;{20}The war of the goblins and imps")
end

-------------------------------------------------------------------------------
