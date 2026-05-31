--File: game_journal_english_yw_chambers.lua

local lang = "english"

function p.main()
    p.recordable()
    p.not_recordable()
end

function p.recordable()
    local str = "Remember, if you get lost you can always respawn: "
        .. "MAIN MENU -> OPTIONS -> PACKAGE TOP MENU -> RESPAWN\n\n"
        .. "^x00ff00Setting a respawn point as your current respawn point "
        .. "will never cause you to be trapped in part of the world. ^!";
    game_journal.add_txt(lang, "YW_CHAMBERS_RESPAWN_how_to_respawn", str)
    game_journal.add_path("@basic;@basic_respawn;@basic_respawn_player;{50}Setting a respawn point will never get you stuck")

    game_journal.add_txt_cb(lang, "YW_CHAMBERS_QUESTS", p.YW_CHAMBERS_QUESTS)
    game_journal.add_path("@quest;@quest_yw;{10}Main")
end

function p.YW_CHAMBERS_QUESTS(chunk_id)
    --Ignoring chunk_id (it is non-anon).
    local str = ""
    if( game_genesis.enabled() ) then
        str = "^x00ff00Primary Quest^!: "
            .. "Escape the Ying World you are in now and eventually find and get past "
            .. "an Inner Core to get a Key to the Universe to save your friend.\n\n"
            .. "Inner Cores hide in the deepest depths of inner space.\n\n"
            .. "^x00ff00Secondary Quest^!: \n"
            .. "enter a ^xff00ffGated Community^!. "
            .. "This will help you along your way. ";
    else
        str = "^x00ff00Primary Quest^!: "
            .. "Escape the Ying World you are in now and eventually find and get past "
            .. "an Inner Core to get a Key to the Universe to save your friend. \n\n"
            .. "Inner Cores hide in the deepest depths of inner space.\n\n"
            .. "^x00ff00Secondary Quests^!: \n"
            .. "1) enter a ^xff00ffGated Community^!, \n"
            .. "2) get Health upgrades, \n"
            .. "3) get Plasma upgrades, \n"
            .. "4) get Cannon upgrades. ";
    end
    return str
end

-------------------------------------------------------------------------------

function p.not_recordable()
    local str = "This is a shortcut."
    game_journal.add_txt(lang, "YW_CHAMBERS_SHORTCUT_1", str)

    local str = "^xff0000DO NOT WALK THROUGH HIGH VOLTAGE FENCES!!!^!"
    game_journal.add_txt(lang, "YW_CHAMBERS_RESPAWN_high_voltage", str)

    local str = "If you shrink and go to the ground, you will find a ^x00ff00Ying Forest^!. "
        .. "It is easy to get lost in these forests. \n\n"
        .. "There are ^xff00fftotem poles^! with useful information in these forests. \n\n"
        .. "Try shrinking and finding a ^x0000ffwaypoint^! (blue with a W). "
        .. "You can use the waypoint to teleport to your EMERGENCY waypoint, "
        .. "where ^x00ff00there is treasure waiting for you^!!\n\n"
        .. "To use a waypoint in the simplest way, "
        .. "first look at it and press the F key. "
        .. "Then \"enable\" it using the first option in its menu. "
        .. "When you are enabling it, you should give it a name. "
        .. "Then, back in the menu for the waypoint, select travel "
        .. "and select your emergency waypoint. ";
    game_journal.add_txt(lang, "YW_CHAMBERS_FOREST_2_first_wp", str)

    game_journal.add_txt_cb(lang, "YW_CHAMBERS_YELLOW_FLOWER", p.YW_CHAMBERS_YELLOW_FLOWER)
end

function p.YW_CHAMBERS_YELLOW_FLOWER(chunk_id)
    --Ignoring chunk_id.
    local str = ""
    if( not game_genesis.enabled() ) then
        str = str .. "These give you upgrades for your Plasma weapon. \n\n"
    end
    str = str .. "You can find these growing on the trees of a Ying Forest. ";
    return str
end
