--File: game_journal_english_bur_farmhouse.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from KY Cygni: \n\n"
        .. "^x0000ffWhen we first found the secret (the Farmhouse) "
        .. "hidden here deep inside Burlington, we could not believe it. "
        .. "Who put it here? Was it always here? "
        .. "There is still so much we do not know "
        .. "about Inner Botany Theory.\n\n"
        .. "The powers that be in Mylantis desired the Farmhouse "
        .. "to be moved into their city. "
        .. "We moved it. Now it is in some elite's penthouse.\n\n"
        .. "The key to the Mylantis building that holds the Farmhouse "
        .. "is here."
    game_journal.add_txt(lang, "DAN_HOUSE_AREA_KEY_part1", str)
    game_journal.add_path("@quest;@quest_bur;@quest_bur_combo;{50}The treasure;{10}Part 1")

    local str = "There is a ^x00ff00Farmhouse^! hidden inside the Mylantis Top City. "
        .. "First find the House of Five Lampreys. "
        .. "When you are at the House of Five Lampreys, if you go left two "
        .. "buildings and back one building, you will be there.\n\n"
        .. "Entry into the building requires this key right here."
    game_journal.add_txt(lang, "DAN_HOUSE_AREA_KEY_part2", str)
    game_journal.add_path("@quest;@quest_bur;@quest_bur_combo;{50}The treasure;{20}Part 2")
    

    local str = "In case you do not already know, the House of Five Lampreys "
        .. "is at the grid location ^x00ff00U-11^! of the Mylantis Top City.\n\n"
        .. "Hence, the building with the Farmhouse is at the grid location "
        .. "^x00ff00S-10^!."
    game_journal.add_txt(lang, "DAN_HOUSE_AREA_KEY_part3", str)
    game_journal.add_path("@quest;@quest_bur;@quest_bur_combo;{50}The treasure;{30}Part 3")

    game_journal.add_txt_cb(lang, "DAN_HOUSE_DAN_BRUCE_1_2_part1",
        p.DAN_HOUSE_DAN_BRUCE_1_2_part1)
    game_journal.add_path("@quest;@quest_my;@quest_my_farm;{10}Laser genesis key in the basement;{10}Part 1")

    local str = "^x0000ffTo get the key to the Laser Genesis Planet, "
        .. "you will need to shrink here and make your way to the basement "
        .. "(which will take time). \n\n"
        .. "Then the key is being guarded by a "
        .. "^x00ff00Clockwork Watchman^! ^x0000ffmonster "
        .. "(which has 20 million health).\n\n"
        .. "The key only lasts for a few seconds, so before you "
        .. "start the quest to get the key, "
        .. "make sure you activate the waypoint on the surface of the "
        .. "Laser Genesis Planet. "
        .. "(The planet is right next to Mylantis)."
    game_journal.add_txt(lang, "DAN_HOUSE_DAN_BRUCE_1_2_part2", str)
    game_journal.add_path("@quest;@quest_my;@quest_my_farm;{10}Laser genesis key in the basement;{20}Part 2")

    local str = "This is the rare ^x00ff00Upgrade Station^!.\n\n"
        .. "^xff00ffHere you can purchase "
        .. "certain upgrades for gold.^!"
    game_journal.add_txt(lang, "DAN_HOUSE_JUNGLE_LIBRARY_3_1_upgrade_station", str)
    --Don't need to record this.
end

function p.DAN_HOUSE_DAN_BRUCE_1_2_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "Message from Dan:\n\n"
        .. "^x0000ffThis is where I grew up! "
        .. "This house has a dirt basement. "
        .. "When I was a kid I use to bring a shovel down there "
        .. "and dig a big hole. "
        .. "If I kept digging, what would I have found?\n\n"
        .. "If you go in this basement, you will find "
        .. "^x00ff00a key to the Laser Genesis Planet^!."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\n^x0000ffThe Laser Genesis Planet is right next to Mylantis. "
            .. "The treasure in the Laser Genesis Planet will "
            .. "turn your Laser weapon from "
            .. "the worst weapon in the game into one of the best."
    end
    return str
end

-------------------------------------------------------------------------------
