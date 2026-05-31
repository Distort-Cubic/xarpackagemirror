--File: game_journal_english_i3_salmon_mushroom.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Salmon Mushroom^!.\n\n"
        .. "Sometimes you can find an I3 WIG Flower at the top."
    game_journal.add_txt(lang, "MUSHROOM", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_sm;{10}Overview")

    local str = "This is the \"Rail\" type main treasure of a Mushroom.\n\n"
        .. "The other type of main treasure of a mushroom is \"Nuke\". "
        .. "The nuke type is more likely to be found the taller the Mushroom. "
        .. "The nuke type treasure also contains the standard gate into group 3 of "
        .. "the Infinity Flower."
    game_journal.add_txt(lang, "MUSHROOM_TREASURE_A2", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_sm;{20}Rail type treasure")

    local str = "This is the \"Nuke\" type main treasure of a Mushroom. \n\n"
        .. "The other type of main treasure of a Mushroom is \"Rail\". \n\n"
        .. "Here there is the standard gate into the Infinity Flower Group #3 (I3)."
    game_journal.add_txt(lang, "MUSHROOM_TREASURE_B2", str)
    game_journal.add_path("@area;@area_i3;@area_i3_flower;@area_i3_flower_sm;{30}Nuke type treasure")
end

-------------------------------------------------------------------------------
