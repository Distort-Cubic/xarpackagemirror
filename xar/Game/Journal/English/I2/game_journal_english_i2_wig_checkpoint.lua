--File: game_journal_english_i2_wig_checkpoint.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "A great place to buy Railgun, EMP, and Nuke ammo at a low "
        .. "price is at a ^x00ff00Black Market^!. "
        .. "You can find these inside Black Mushrooms, which are themselves "
        .. "sometimes inside Salmon Mushrooms, "
        .. "which themselves grow in Dandelion Patches in I3.\n\n"
        .. "However, you can also find a cheap place to buy nukes "
        .. "(for 100 gold each) inside the "
        -- .. "However, you can also find a Black Market inside the " --Nerfing.
        .. "^xff00ffSecret Wolf Forest^!. "
        .. "Moon Flowers also grow in the Secret Wolf Forest. "
        .. "Maybe this woman is holding a Moon Flower. "
        .. "I like to think so. "
        .. "Sometimes you have to go through hell to find the answers."
    game_journal.add_txt(lang, "WIG_CHECKPOINT_FLOWER_GIRL_black_markets", str)
    game_journal.add_path("@area;@area_hell;@area_hell_wolf;{10}Location hint")
    game_journal.add_path("@item;@item_buysell;@item_buysell_blackmar")

    local str = "^xff00ffThese stations to buy a markers for 1 gold are rare!\n\n"
        .. "Here is also a station to buy a nuke for 150 gold. You can find "
        .. "similar 100 gold nuke stations in Burlington. ";
    game_journal.add_txt(lang, "WIG_CHECKPOINT_FLOWER_GIRL_markers_for_1", str)
    --Don't need to put in journal.
    --The player has the list of places to buy nukes.
end

-------------------------------------------------------------------------------
