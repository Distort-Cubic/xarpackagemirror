--File: game_journal_english_yw_ying_tower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^xff00ffRemember: some of the greatest "
        .. "secrets are the ones that hide in plain sight.\n\n"
        .. "Also, you might assume there is glass at a location "
        .. "when really there is not."
    game_journal.add_txt(lang, "YING_FOREST_TOWER_SECRET_TOTEM", str)
    game_journal.add_path("@area;@area_yw;@area_yw_forest;@area_yw_forest_tower;{10}Main secret;{10}Hint")

    local str = "These ^xffff00Yellow Box Devices^! "
        .. "take all of your keys away."
    game_journal.add_txt(lang, "YING_FOREST_TOWER_YELLOW_BOX", str)
    game_journal.add_path("@item;@item_yellow_box")

    local str = "If you give a mirror to a normal person, "
        .. "they will say \"I see that my hair is messy\", "
        .. "or \"my shirt looks good\" or whatever.\n\n"
        .. "But some minds are strange. "
        .. "If you give a mirror to some and ask them what "
        .. "they see, they might say \"^x0000ffI see a mirror^!\".\n\n"
        .. "Then you say \"Ok, but what do you see INSIDE\" "
        .. "the mirror. "
        .. "They then say \"^x0000ffI see myself looking in a mirror^!\".\n\n"
        .. "You say \"Ok... tell me more about what you see about "
        .. "yourself. "
        .. "They say \"^x0000ffI see myself looking in the mirror "
        .. "looking at myself looking at myself looking at myself "
        .. "looking at myself looking at myself looking at myself...^!\".\n\n"
        .. "That's how I imagine the core of the universe: "
        .. "infinitely focused on itself. "
        .. "The ultimate vanilla ice cream with no toppings."
    game_journal.add_txt(lang, "YING_FOREST_TOWER_SECRET_SHRINE", str)
    game_journal.add_path("@area;@area_yw;@area_yw_forest;@area_yw_forest_tower;{10}Main secret;{20}I see myself looking in a mirror")

    str = "Tip: Do not attempt to kill Sliver monsters. "
        .. "Just freeze them with your Ice Laser "
        .. "and run past them."
    game_journal.add_txt(lang, "YING_FOREST_TOWER_TIP_slivers", str)
    game_journal.add_path("@area;@area_yw;@area_yw_forest;@area_yw_forest_tower;{20}Sliver monster tip")
end

-------------------------------------------------------------------------------
