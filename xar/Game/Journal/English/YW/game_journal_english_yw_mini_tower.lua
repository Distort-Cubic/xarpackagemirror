--File: game_journal_english_yw_mini_tower.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "In the Ying World you primarily improve your "
        .. "^x00ff00Plasma^! and ^x00ff00Cannon^! weapon "
        .. "although your Plasma does not get really good until "
        .. "the Demon Caves in Botany Labs.\n\n"
        .. "However if you go off the beaten path in the Ying World "
        .. "you might be able to improve your Laser, Rocket, and Minigun weapons. "
        .. "Having at least one upgrade for your Laser and Minigun is useful "
        .. "even in the Ying World. "
        .. "Your Rocket requires more upgrades to be useful. "
    game_journal.add_txt(lang, "MINI_TOWER_other_weapons", str)

    local str = "Here are places in the Ying World to get at least one "
        .. "^x0000ffMinigun upgrade^!:\n\n"
        .. "1) ^x00ff00The tower right here^! in front of you. "
        .. "It has no monsters, it just requires a few minutes of navigation.\n\n"
        .. "2) ^x00ff00Small Yellow Flower dungeons^!. Specifically, if you "
        .. "go into a \"secondary ground building\" and shrink, you will find "
        .. "towers growing on the sides of towers. "
        .. "If you shrink enough and follow the \"increasing numbers\" "
        .. "until they reach 7, you will find Minigun upgrades.\n\n"
        .. "3) In ^x00ff00Ying Cave Islands^! (the small 3x3 islands that surround the "
        .. "larger islands in the Ying World), you can find Minigun upgrades "
        .. "in Layer 4 Caves. "
    game_journal.add_txt(lang, "MINI_TOWER_mini", str)

    local str = "Here are places in the Ying World to get at least one "
        .. "^x0000ffLaser upgrade^!:\n\n"
        .. "1) ^x00ff00The tower right here^! in front of you.\n\n"
        .. "2) On the horizontal poles sticking out of a column that hangs below "
        .. "a Ying Forest Tree. These hanging columns are only found if you shrink "
        .. "in the ying forest many times (15 times is enough). "
        .. "You are looking for a pole that is partially blue. "
    game_journal.add_txt(lang, "MINI_TOWER_laser", str)

end

-------------------------------------------------------------------------------
