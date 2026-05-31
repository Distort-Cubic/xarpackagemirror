--File: game_journal_english_i2_spruce_tree.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Spruce Tree^!.\n\n"
        .. "In the trunk you can get 100 rockets.\n\n"
        .. "You can also get 1 nuke and 1 EMP."
    game_journal.add_txt(lang, "SPRUCE_TREE_INFO", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_spruce;{10}Overview")

    local str = "Here is an out-only waypoint.\n\n"
        .. "It can be hard to find a waypoint out of I2!"
    game_journal.add_txt(lang, "SPRUCE_TREE_ROCKET_TREASURE_2_wp", str)
    game_journal.add_path("@area;@area_i2;@area_i2_flower;@area_i2_flower_spruce;{20}There is an out-only waypoint here")
end

-------------------------------------------------------------------------------
