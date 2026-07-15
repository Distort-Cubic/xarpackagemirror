--File: game_journal_english_i2_montreal.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "This is a picture of a Fanatic Island. "
        .. "The island in the picture contains a "
        .. "^xff00ffFanatic^x00ff00 monster, which is "
        .. "purple with black dots.\n\n"
        .. "This monster hurts you whenever it is less than a certain "
        .. "distance away from you (unless you are more than 5 levels "
        .. "deeper than the monster).\n\n"
        .. "^xff0000What makes this monster so nefarious is that it "
        .. "damages you even if you are not visible to it."
    game_journal.add_txt(lang, "MONTREAL_FANATIC_HINT_k_part1", str)
    game_journal.add_path("@area;@area_i2;@area_i2_fi;@area_i2_fi_monster;{10}Part 1")

    local str = "^x00ff00So you cannot establish a base next to a Fanatic. "
        .. "If this Montreal town you are in now is close to a Fanatic "
        .. "which causes him to damage you, "
        .. "then I advise you go elsewhere or go deeper.\n\n"
        .. "In terms of going deeper, note that on top of this Montreal "
        .. "city (on top of the high voltage lattice) "
        .. "there is a green square with a "
        .. "^xff00ffFanatic Weed^x00ff00 on top."
    game_journal.add_txt(lang, "MONTREAL_FANATIC_HINT_k_part2", str)
    game_journal.add_path("@area;@area_i2;@area_i2_fi;@area_i2_fi_monster;{20}Part 2")

    local str = "^x00ff00A Fanatic monster drops a Dark Hole Max Ammo upgrade "
        .. "when you kill it.\n\n"
        .. "Fanatics are \"true believers\", so to speak. "
        .. "But then again, I am a true believer of the hidden world. "
        .. "I know that it exists, and I want to convince others of this "
        .. "as well. "
        .. "Maybe one day you will find me wearing a purple dress with "
        .. "black polka dots."
    game_journal.add_txt(lang, "MONTREAL_FANATIC_HINT_k_part3", str)
    game_journal.add_path("@area;@area_i2;@area_i2_fi;@area_i2_fi_monster;{30}Part 3")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Look at the smiling monster in this picture. "
        .. "That is ^xff00ffOverlord^x00ff00.\n\n"
        .. "I hate these with a passion. "
        .. "They do not hurt you when you are the same size as "
        .. "them, but when you are smaller they deal a lot of "
        .. "damage and they also take less damage from you. "
        .. "So, when you are in I2 (which is where you find lots of these), "
        .. "it is wise to look around before you use "
        .. "a shrinker."
    game_journal.add_txt(lang, "MONTREAL_FANATIC_HINT_k_part4", str)
    game_journal.add_path("@area;@area_i2;@area_i2_fi;@area_i2_fi_monster;{40}Part 4")

    p.gold_locations()
end

function p.gold_locations()
    local str = "Here are some places to find gold in the world:\n\n"
        .. "1) Fanatic Blue Caves (in Fanatic Weeds in I2)\n\n"
        .. "2) ^xff00ffAladdin's Cave^! (in I3 desert)\n\n"
        .. "3) Medium Gold Asteroids\n\n"
        .. "4) ^xff00ffHigh Gold Asteroids^!\n\n"
        .. "5) The Mylantis Caves."
    game_journal.add_txt(lang, "MONTREAL_INFO_LOCATIONS_gold", str)
    game_journal.add_path("@item;@item_gold;@item_gold_loc;{20}Places to find gold")

    local str = "An advanced way to get gold is to sell your ammo/health at sell stations."
    game_journal.add_txt(lang, "MONTREAL_INFO_LOCATIONS_sell1", str)
    game_journal.add_path("@item;@item_gold;@item_gold_loc;{30}Selling ammo/health for gold;{10}Overview")

    local str = "You can find ^x00ff00Scarce Sell Stations^! "
        .. "(next to waypoints) in the following locations:\n\n"
        .. "1) Huntington Towns (in the center of Oranges)\n\n"
        .. "2) Toronto Cities (in I2)\n\n"
        .. "3) Burlington Cities (at the top of their central tower)."
    game_journal.add_txt(lang, "MONTREAL_INFO_LOCATIONS_sell2", str)
    game_journal.add_path("@item;@item_gold;@item_gold_loc;{30}Selling ammo/health for gold;{20}Where to find scarce sell stations")
    game_journal.add_path("@item;@item_buysell;{10}Scarce sell stations") 

    local str = "You can find ^x00ff00Rare Sell Stations^! "
        .. "(next to waypoints) in the following locations:\n\n"
        .. "1) ^xff00ffThe Secret Farmhouse^!."
    game_journal.add_txt(lang, "MONTREAL_INFO_LOCATIONS_sell3", str)
    game_journal.add_path("@item;@item_gold;@item_gold_loc;{30}Selling ammo/health for gold;{30}Where to find rare sell stations")
    game_journal.add_path("@item;@item_buysell;{20}Rare sell stations") 
end

-------------------------------------------------------------------------------
