--File: game_journal_english_mid_stoney_sanctuary_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "The ^x00ff00Main Branch^! is the canonical "
        .. "labeled path into inner space, "
        .. "to the region that contains Inner Cores. "
        .. "Here are the first few locations along the Main Branch:\n\n"
        .. "Stoney Air\n\n"
        .. "Yellow Cube (in Stoney Air)\n\n"
        .. "Mossy Air\n\n"
        .. "Black Cube (in Mossy Air)\n\n"
        .. "Orange\n\n"
        .. "Blue Bubble\n\n"
        .. "Botany Lab\n\n"
        .. "Infinity Flower."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_MAIN_BRANCH", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{10}Main branch")
    game_journal.add_path("@area;@area_mid;@area_mid_mb;{99}Large part of the branch") --Change num
    game_journal.add_path("@area;@area_i1;@area_i1_mb;{10}Main branch up to infinity flower")

    local str = "^xff00ffSome caves in Stoney Air have X's on their bottom.\n\n"
        .. "What does it mean?"
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_STONEY_CAVE_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{20}Some stoney caves have an X at their bottom")

    local str = "Another sometimes useful thing to remember about Stoney Air "
        .. "is that in a Green Shrink Box, at the end of the maze, "
        .. "there is a waypoint.\n\n"
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_STONEY_CAVE_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{30}The maze of green shrink boxes has a waypoint")

    local str = "^xff00ffRemember that you can fly THROUGH some pictures to "
        .. "find a secret on the other side! "
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_STONEY_CAVE_part3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{40}Wall secrets;{10}Part 1")

    local str = "^xff00ff"
        .. "The treasure room of the sewers of "
        .. "a Richmond City contains a secret message."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_RICHMOND_SEWERS", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{50}Secret message in richmond sewers")

    local str = "Here is just a general warning:\n\n"
        .. "When you pass by a ^xffffffWhite Box Device^!, it will take away all of your ammo."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_RICHMOND_SEWERS_white_box", str)
    game_journal.add_path("@item;@item_white_box")

    local str = "An ^x00ff00Orange^! is part of the Main Branch. "
        .. "You can find one by leaving this Stoney Church and "
        .. "going into the surrounding Mossy Air. "
        .. "Shrink and explore one of the Black Cubes in the air. "
        .. "Growing on the sides of the Black Cube you can "
        .. "easily find an Orange."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_HUNTINGTON_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{80}Orange;{10}Part 1")

    local str = "When you enter an Orange, to continue down "
        .. "the Main Branch you must first go through the Outer Crust. "
        .. "When you get through the Outer Crust and enter the "
        .. "Outer Mantle, you will see Blue Bubbles there. "
        .. "Enter a Blue Bubble to continue down the Main Branch."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_HUNTINGTON_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{80}Orange;{20}Part 2")
    game_journal.add_path("@area;@area_mid;@area_mid_mb;{60}Orange to blue bubble")

    game_journal.add_txt_cb(lang, "STONEY_CHURCH_LIB_HUNTINGTON_part3",
        p.STONEY_CHURCH_LIB_HUNTINGTON_part3)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{80}Orange;{30}Part 3")

    game_journal.add_txt_cb(lang, "STONEY_CHURCH_LIB_BLUE_BUBBLE_part1",
        p.STONEY_CHURCH_LIB_BLUE_BUBBLE_part1)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{90}Blue bubble;{10}Part 1")

    local str = "Finally, a Blue Bubble has many small green rooms, "
        .. "which are actually ^x00ff00Botany Labs^!.\n\n"
        .. "These are creations of SN1987A. "
        .. "Indeed, the purpose of a Blue Bubble is to house these labs.\n\n"
        .. "Botany Labs are part of the Main Branch."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_BLUE_BUBBLE_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{90}Blue bubble;{20}Part 2")

    local str = "The air surrounding this Stoney Church "
        .. "(but still inside this Yellow Cube) "
        .. "is called ^x00ff00Mossy Air^!. "
        .. "It is part of the Main Branch. "
        .. "You can read about the Main Branch nearby in this library."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_MOSSY_ROCKET_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{70}Mossy air;{10}Part 1")

    local str = "One notable thing you can find in Mossy Air "
        .. "are these empty cubes filled with bees. "
        .. "Each one contains one treasure room (a yellow block) "
        .. "with 4 Rocket Damage upgrades, 2 Rocket Velocity upgrades, "
        .. "1 Rocket Max Ammo upgrade, and 1 Rocket Radius upgrade.\n\n"
        .. "However, there are tons of bees surrounding the treasure "
        .. "so you probably need a strong EMP weapon to survive."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_MOSSY_ROCKET_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{70}Mossy air;{20}Part 2")

    local str = "^x00ff00Mossy Air^! has many islands floating inside it "
        .. "(^x00ff00Mossy Islands^!). "
        .. "If you shrink enough, you can go beneath the surface "
        .. "of such an island.\n\n"
        .. "There are caves below, and at the bottom a cavern.\n\n"
        .. "There are 3 types of caverns."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_MOSSY_ISLAND_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{70}Mossy air;{30}Part 3")

    local str = "Cavern type #1: lots of Health Towers. "
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_MOSSY_ISLAND_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{70}Mossy air;{40}Part 4")

    local str = "Cavern type #2: lots of Ying Flowers. "
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_MOSSY_ISLAND_part3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{70}Mossy air;{50}Part 5")

    game_journal.add_txt_cb(lang, "STONEY_CHURCH_LIB_MOSSY_ISLAND_part4",
        p.STONEY_CHURCH_LIB_MOSSY_ISLAND_part4)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{70}Mossy air;{60}Part 6")

    local str = "Your ^x00ff00Dark Hole^! weapon only damages monsters "
        .. "that are on a level coarser than you.\n\n"
        .. "The secondary fire deals you 100 damage, but it "
        .. "regenerates one ammo."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_DARK_HOLE_part1", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_gen;{10}Part 1")

    local str = "To fire a primary shot, you should hold down the fire button "
        .. "and release when you actually want to fire.  The longer you hold "
        .. "it down, the more damage the shot deals.  "
        .. "Each second you hold down the fire button will increase the damage, "
        .. "however this will deal you damage."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_DARK_HOLE_part2", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_gen;{20}Part 2")

    local str = "Here is how the damage works: "
        .. "Let B be the \"base damage amount\". "
        .. "Let D be the \"adjusted damage\".\n\n"
        .. "If you just tap the fire button and release, this will do D = B damage.\n\n"
        .. "If you hold down fire for one second, it will do D = B+2B damage "
        .. "but you will be dealt 100 damage.\n\n"
        .. "If you hold down fire for two seconds, it will do D = B+2B+5B damage "
        .. "but for that second second you will be dealt 200 damage.\n\n"
        .. "If you hold down the fire for three seconds, it will do "
        .. "D = B+2B+5B+10B "
        .. "damage, but for that third second you will be dealt 300 damage. "
        .. "The pattern continues like: +15B, +20B, +25B, etc."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_DARK_HOLE_part3", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_gen;{30}Part 3")

    local str = "A direct hit to a monster deals 2D damage.\n\n"
        .. "The next closest monster is dealt D/2 damage.\n\n"
        .. "The next closest monster is dealt D/3 damage.\n\n"
        .. "The next closest monster is dealt D/4 damage. Etc."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_DARK_HOLE_part4", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_gen;{40}Part 4")

    local str = "^x00ff00The secondary fire of your Railgun steals health.^! "
        .. "The more damage is dealt, the more health is stolen. "
        .. "This is probably the only way to survive in some places.\n\n"
        .. "By pressing R (in the default key configuration), "
        .. "you will switch to your Railgun "
        .. "and start to fire secondary shots. "
        .. "When you release the R key, you "
        .. "then switch back to your old weapon."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_RAILGUN_part1", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_gen;{10}Version 1")

    local str = "Here are some places to find Railgun upgrades:\n\n"
        .. "1) In ^x00ff00Railgun Towers^!.  These can be found on Mossy Islands "
        .. "and also in Botany Labs.  Such a tower is probably the easiest way "
        .. "to get Railgun damage upgrades, although not the fastest.\n\n"
        .. "2) In ^x00ff00Small Laser Forts^!.\n\n"
        .. "3) In the ^x00ff00Base Camps of Infinity Flowers^!.\n\n"
        .. "4) In Group #2 (^x00ff00I2^!) of Infinity Flowers. "
        .. "^xff00ffThis is probably the best place to get Railgun upgrades.^!"
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_RAILGUN_part2", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{20}Various upgrades")

    local str = "^xff00ffIf you shrink into the yellow lattice of this giant yellow cube, "
        .. "you can find gray cubes that have rockets on top of them.\n\n"
        .. "If you shrink in the yellow lattice and go up to the green roof "
        .. "directly above, there is a secret hole that has blue rings in it."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_TREASURE", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{60}Yellow cube secret blue rings")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "There are minds that explore this Fractal Block World that "
        .. "identify themselves as stars or other celestial objects.\n\n"
        .. "Whether they are literally stars remains unknown to me.\n\n"
        .. "But one thing is for sure: they are not human."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_TROPHY_part1", str)
    game_journal.add_path("@lore;@lore_random;@lore_random_people;{10}Part 1")
    
    local str = "^x00ff00I think perhaps the way they identify themselves "
        .. "is ironic because they are very \"big things\" interested "
        .. "in \"very small things\".\n\n"
        .. "To me it sounds like a bunch of black holes sitting around a poker table, "
        .. "smoking cigars and casually speculating about what is inside their singularities."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_TROPHY_part2", str)
    game_journal.add_path("@lore;@lore_random;@lore_random_people;{20}Part 2")

    local str = "So yes, there are secrets behind some pictures.\n\n"
        .. "^xff00ffBut did you know that there are some walls you "
        .. "can fly through?  They appear solid but they are not! "
        .. "These are rare and not necessary to win the game. "
        .. "They always look like the standard gray concrete block."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_SECRET_1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{40}Wall secrets;{20}Part 2")

    local str = "^xff00ffYou found this secret room!^!\n\n"
        .. "Let's talk about kickback (weapon recoil). "
        .. "Certain weapons kick you back, such as the nuke.\n\n"
        .. "So, you might want to use your brake while firing a nuke.\n\n"
        .. "On the other hand, the kickback of the nuke is useful for "
        .. "propelling yourself very quickly.\n\n"
        .. "Not only do some weapons have kickback, but others have "
        .. "\"kick forward\"."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_SECRET_2_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{40}Wall secrets;{30}Part 3")

    local str = "Some keys last a ^x00ff00r^!eally long time so you can get them "
        .. "in one place and use them in a tot^x00ff00a^!lly different place.\n\n"
        .. "Other keys at f^x00ff00i^!rst seem to be useful but are actually... "
        .. "comp^x00ff00l^!etely useless."
    game_journal.add_txt(lang, "STONEY_CHURCH_LIB_SECRET_2_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_san;{40}Wall secrets;{40}Part 4")
end

function p.STONEY_CHURCH_LIB_HUNTINGTON_part3(chunk_id)
    --Ignoring chunk_id.
    local str = "However, you can perform a side quest and "
        .. "continue through the Inner Crust of the Orange.\n\n"
    if( not game_genesis.enabled() ) then
        str = str .. "To get through the Inner Crust of the Orange, "
            .. "you should have a few EMP radius upgrades already.\n\n"
        -- str = str .. "There are two ways through the Inner Crust. "
        --     .. "One way is to pass by a White Box Device "
        --     .. "(which will steal all your ammo). "
        --     .. "Then you will be put "
        --     .. "in a dungeon with an unlimited supply of EMP ammo "
        --     .. "which you will use. "
        --     .. "The second way to to pass through certain red caves "
        --     .. "(which also probably require you to have a strong EMP weapon, "
        --     .. "but there is no White Box Device there).\n\n"
    end
    str = str .. "Then you enter the Inner Mantle, and in the very center is the "
        .. "town of ^x00ff00Huntington^!."
    return str
end

function p.STONEY_CHURCH_LIB_BLUE_BUBBLE_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "A ^x00ff00Blue Bubble^! is part of the Main Branch. "
        .. "You can find these inside Oranges, as described nearby "
        .. "in this library.\n\n"
    if( game_genesis.enabled() ) then
        str = str .. "Blue Bubbles have many small yellow and purple rooms, "
            .. "and one large red room."
    else
        str = str .. "Blue Bubbles contain one large red room, "
            .. "which has Nuke upgrades.\n\n"
            .. "There are also many small yellow rooms, "
            .. "which have Rocket upgrades.\n\n"
            .. "There are also many small purple rooms, "
            .. "which have Dark Hole upgrades "
            .. "(either Max Ammo or Velocity)."
    end
    return str
end

function p.STONEY_CHURCH_LIB_MOSSY_ISLAND_part4(chunk_id)
    --Ignoring chunk_id.
    local str = "Cavern type #3: the town of Jericho and Catacombs."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nIn Jericho you can buy markers for 4 gold a piece.\n\n"
            .. "Catacombs are challenging, but have significant dark hole "
            .. "upgrades, among other things."
    end
    return str
end

-------------------------------------------------------------------------------
