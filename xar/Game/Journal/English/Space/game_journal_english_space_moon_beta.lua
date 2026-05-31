--File: game_journal_english_space_moon_beta.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Looking at the stars can be scary, "
        .. "but it doesn't scare me when I am on top of the world.\n\n"
        .. "Moons surrounding planets surrounding suns inside "
        .. "filaments. "
        .. "And there is more than just this traditional outer space: "
        .. "physical universes exist in a multiverse, and the region "
        .. "between these universes is ^xff00ffThe Bulk^x00ff00.\n\n"
        .. "Like almost everything in this world, you don't need to find The Bulk "
        .. "by going outward; you find it on the inside. "
        .. "There are places inside this reality were you can enter The Bulk. "
        .. "It goes without saying that The Bulk "
        .. "is relevant to Inner Botany Theory."
    game_journal.add_txt(lang, "SMALL_DARK_HOLE_MAZE_TREASURE", str)
    game_journal.add_path("@area;@area_bulk;@area_bulk_where;{10}It is possible to find the bulk")
end

-------------------------------------------------------------------------------
