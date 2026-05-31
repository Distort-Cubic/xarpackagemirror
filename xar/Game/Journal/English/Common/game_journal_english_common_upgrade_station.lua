--File: game_journal_english_common_basic.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is the rare ^x00ff00Upgrade Station^!. "
        .. "Here you can buy certain upgrades for gold. "
        .. "Try to stick to the ones that cost 100 gold a piece.\n\n"
        .. "You can find an Upgrade Station next to a waypoint "
        .. "in the ^xff00ffSecret Farmhouse^!.\n\n"
        .. "The Secret Farmhouse can be found at the end of the "
        .. "^xffffffBurlington City Combination Lock^!. "
        .. "This is a very advanced secret. "
    game_journal.add_txt(lang, "this_is_a_upgrade_station", str)
    game_journal.add_path("@item;@item_buysell;@item_buysell_us")  
end
