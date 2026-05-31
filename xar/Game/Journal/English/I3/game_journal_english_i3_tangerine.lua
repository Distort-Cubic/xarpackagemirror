--File: game_journal_english_i3_tangerine.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Below is the town of ^x00ff00Huntington^!. "
        .. "This town can also be found in the center of Oranges.\n\n"
        .. "Note that Huntington towns have ^xff00ffPink Rings^!, which "
        .. "you may find useful.\n\n"
        .. "The treasure in this room includes upgrades to increase "
        .. "your nuke explosion radius. Such upgrades can also be found in abundance "
        .. "in ^x00ff00Iolite Gems^! (which are under the surface of Mylantis)."
    game_journal.add_txt(lang, "TANGERINE_TREASURE_CHUNK_part1", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_tan;{10}Comment about huntington")
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_tan;{20}Comment about nuke radius upgrades")

    str = "^x00ff00Message from your friend K:\n\n"
        .. "Having trouble finding the trophy in Tegan's Garden?\n\n"
        .. "It is buried under one of the fence posts."
    game_journal.add_txt(lang, "TANGERINE_TREASURE_CHUNK_part2", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_tan;{30}Hint about tegan's garden")
    game_journal.add_path("@area;@area_bur;@area_bur_tegen;{30}Where to find trophy")

    str = "^x00ff00Message from your friend K:\n\n"
        .. "In Willison Fields (in I1), you can find Purple Wells.\n\n"
        .. "With a 2/5 chance, there will be no Pink Sphere on the surface, "
        .. "which means that if you enter it and go the bottom, "
        .. "you will find the ^xff00ffSecret Cave of Jerichos^x00ff00."
    game_journal.add_txt(lang, "TANGERINE_TREASURE_CHUNK_part3", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_tan;{40}How the enter secret cave of jerichos")
end

-------------------------------------------------------------------------------
