--File: game_journal_english_i1_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is the ^x00ff00Library for both the Botany Lab and I1^!.\n\n"
        .. "This contains information about\n\n"
        .. "1) the Botany Lab,\n\n"
        .. "2) where to find Infinity Flowers "
        .. "(which ultimately contain ^xff00ffInner Cores^!),\n\n "
        .. "3) Group #1 of the Infinity Flower (I1)."
    game_journal.add_txt(lang, "I1_LIBRARY_WELCOME", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{10}Overview")

    p.wep_location_locations()

    local str = "Here are things of interest within the Botany Lab: \n\n"
        .. "1) There are caves in the ground (with ^x00ff00Infinity Flowers^!).\n\n"
        .. "2) There are giant red cubes with Homing upgrades. "
        .. "^xff0000Warning: they are advanced.^!\n\n"
        .. "3) Lots of flowers grow on the ground surface.\n\n"
        .. "4) If you shrink and go into the black cubes in the air, "
        .. "there are ^x00ff00Lighthouses (which are useful for your Minigun)."
    game_journal.add_txt(lang, "I1_LIBRARY_GENERAL", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{20}Botany lab;{10}Overview")

    local str = "When you kill a monster that is the same size as you, "
        .. "it often drops an item (which is also the same size as you).\n\n"
        .. "However, some monsters are intended to be larger than you, "
        .. "and when they die they may drop a \"^x00ff00Drop Box^!\".\n\n"
        .. "This is a box that when you approach it "
        .. "(and you are smaller than it), "
        .. "it will turn into an item that is your size "
        .. "(so you can pick it up)."
    game_journal.add_txt(lang, "I1_LIBRARY_DROP_drop1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{20}Botany lab;{20}Drop boxes")

    local str = "Within the air of a Botany Lab, there are\n\n"
        .. "1) Baby Spiders, which have drop boxes with Minigun ammo\n\n"
        .. "2) Sentinels, which have drop boxes with "
        .. "EMP Freeze Time upgrades.\n\n"
        .. "You might want to experiment here in a Botany Lab killing these "
        .. "monsters and getting these items."
    game_journal.add_txt(lang, "I1_LIBRARY_DROP_drop2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{20}Botany lab;{30}Monster drops")

    local str = "If within a Botany Lab you go to a Lighthouse, "
        .. "along the way you will encounter ^x00ff00Overlords^!.\n\n"
        .. "1) This monster only damages you when you are smaller than it.\n\n"
        .. "2) When you are smaller than this monster, your damage to it "
        .. "is reduced by a large factor."
    game_journal.add_txt(lang, "I1_LIBRARY_DROP_overlord", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{20}Botany lab;{40}Overlords")

    local str = "If you go to the basement of any I1 Library "
        .. "you can enter the Imp Caves (of the Botany Lab Caves).\n\n"
        .. "Also, there is a safe in every I1 Library that contains "
        .. "an Infinity Flower."
    game_journal.add_txt(lang, "I1_LIBRARY_MAP", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{80}Botany caves in the basement of the I1 library")

    local str = "There are ^x00ff00Pink Rings^! and ^x00ff00Pink Spheres^!: "
        .. "touching a Pink Ring will teleport you to a Pink Sphere.\n\n"
        .. "The universal symbol for there being a Pink Ring "
        .. "nearby is a pink cube with a \"P\" on it: see the picture.\n\n"
        .. "One common structure with a Pink Ring inside is a "
        .. "^x00ff00Pink Tree^!: see the picture."
    game_journal.add_txt(lang, "I1_LIBRARY_PINK_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{40}Pink rings;{10}Reminder about pink rings and pink cubes with P")

    local str = "Within an ^x00ff00Infinity Flower^!, ^xff00ffmost likely "
        .. "the only Pink Rings that will teleport you outside "
        .. "the entire Infinity Flower are located in Group 1 (I1)^!.\n\n"
        .. "Within I1 they are mostly located in the Williston Fields, "
        .. "inside ^x00ff00Pink Trees^!.\n\n"
        .. "That is, surrounding Bristol Towns there are Pink Trees."
    game_journal.add_txt(lang, "I1_LIBRARY_PINK_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{40}Pink rings;{20}Pink rings in infinity flower are mostly in I1")

    local str = "This is what an ^x00ff00Infinity Flower^! looks like: "
        .. "see the picture. \n\n"
        .. "^x00ff00You can certainly find some in the caves "
        .. "below the basement of this library.\n\n"
        .. "You can also find one Infinity Flower in "
        .. "the red safe on this floor. "
        .. "However, entering that safe is time consuming. "
        .. "Finding an Infinity Flower "
        .. "in the caves below is much quicker.^!"
    game_journal.add_txt(lang, "I1_LIBRARY_INF_FLOWER_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{50}Infinity flower;{10}Where to find inside the I1 library")

    local str = "The insides of an Infinity Flower naturally "
        .. "break into three groups: "
        .. "Group 1 (abbreviated I1), Group 2 (I2), and Group 3 (I3).\n\n"
        .. "^xff00ffInner Cores exist in the \"Hell\" parts of I3."
    game_journal.add_txt(lang, "I1_LIBRARY_INF_FLOWER_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{50}Infinity flower;{20}I1, I2, I3")

    local str = "The Group #1 of the Infinity Flower (I1) has been well "
        .. "colonized.  We have created the ^x00ff00Williston^! cities "
        .. "and the ^x00ff00Bristol^! towns. \n\n"
        .. "Group #1 looks like what is shown on the pictures on the wall.\n\n"
        .. "The gray patches are ^x00ff00Williston Cities^!, "
        .. "and the green patches are ^x00ff00Williston Fields^! "
        .. "(where Bristol Towns can be found on the ground)."
    game_journal.add_txt(lang, "I1_LIBRARY_I1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{60}I1;{10}Overview")

    local str = "There are four tubes to shrink to enter a field: normal, "
        .. "white top, green top, and red. \n\n"
        .. "Normal tubes allow you to shrink directly.\n\n"
        .. "White top tubes have ^xffffffHealth upgrades^! at their end.\n\n"
        .. "Green top tubes have ^x00ff00Minigun Max Ammo upgrades^! "
        .. "at their end.\n\n"
        .. "The red tubes you can use to both enter AND EXIT."
    game_journal.add_txt(lang, "I1_LIBRARY_I1_tubes", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{60}I1;{20}The tubes to shrink to enter a field")

    local str = "In Williston Fields, you can find ^x00ff00EMP Castles^!. \n\n"
        .. "These have EMP upgrades, and also a map room."
    game_journal.add_txt(lang, "I1_LIBRARY_I1_emp_castle", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{60}I1;{30}EMP castles")

    local str = "You can enter Group #2 (I2) of the Infinity Flower in the center "
        .. "of a Bristol Town."
    game_journal.add_txt(lang, "I1_LIBRARY_I2_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{60}I1;{40}Bristol (how to enter I2)")

    local str = "We have created libraries, just like this one, inside I2.\n\n"
        .. "There you can learn more about I2."
    game_journal.add_txt(lang, "I1_LIBRARY_I2_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{70}I2;{10}The I2 library is inside I2")

    local str = "Message from SN1987A:\n\n"
        .. "^x0000ffMy Botany Lab is a huge success! "
        .. "Already we have learned so much about Infinity Flowers, "
        .. "but in many ways we are still at the beginning "
        .. "of our understanding of them. "
        .. "Infinity Flowers grow abundantly in the caves "
        .. "within my Botany Lab. "
        .. "However, I felt it was important to keep a sample "
        .. "of an Infinity Flower in a secure place. "
        .. "So, I have placed an Infinity Flower "
        .. "in this red safe right here.\n\n"
        .. "To get to the flower, one must pass through 4 5x5x5 mazes. "
        .. "That should keep out unwanted intruders."
    game_journal.add_txt(lang, "I1_LIBRARY_SAFE_ROOM", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{90}Infinity flower vault")
    -- game_journal.add_path("@area;@area_lib;@area_lib_i1;{90}Infinity flower vault;{10}There is an infinity here")

    local str = "Message from Altair:\n\n"
        .. "^x0000ffI created the most modern incarnation of the "
        .. "^x00ff00Railgun^x0000ff using Re-Creation technology. "
        .. "I'm not proud of what I did, but I know my "
        .. "creation is necessary for expeditions into the deep "
        .. "depths of inner space.\n\n"
        .. "The secondary fire of my Railgun steals health from enemies. "
        .. "In very hostile areas, stealing health in this way is the "
        .. "only way to survive.\n\n"
        .. "We train explorers to quickly switch to their Railgun "
        .. "to steal health, and then switch back to their main weapon. "
        .. "This can be accomplished by holding down the \"r\" key "
        .. "until the Railgun shoots its secondary fire. "
        .. "Releasing the \"r\" key switches back to whatever weapon "
        .. "you were using. "
        .. "This \"r\" key technique should work, unless you messed "
        .. "with your controls."
    game_journal.add_txt(lang, "I1_LIBRARY_RAIL", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_gen;{20}Version 2")
    game_journal.add_path("@lore;@lore_random;@lore_random_wep;{10}Railgun")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "As I have learned, two complementary areas of "
        .. "scientific inquiry in this world are ^xff00ffInner Botany Theory^! "
        .. "^x00ff00and ^xff00ffRe-Creation Theory^!^x00ff00. "
        .. "I have heard them described as corresponding to the \"NECESSARY\" "
        .. "(Inner Botany Theory) and \"SUFFICIENT\" (Re-Creation Theory) "
        .. "aspects of Inner Cores, although that "
        .. "description does not make complete sense to me."
    game_journal.add_txt(lang, "I1_LIBRARY_K_2_part1", str)
    game_journal.add_path("@lore;@lore_ib;{10}Two complementary areas;{10}Part 1")

    local str = "^x00ff00Although the two areas complement each other, there is "
        .. "competition between the two. Each group seems to think what they "
        .. "do is most important, and that they are smarter than the other group.\n\n"
        .. "I feel pressure to pick a side. "
        .. "Like would I rather search for a rare flower in a hostile jungle, "
        .. "or design the reactor of a battle cruiser."
    game_journal.add_txt(lang, "I1_LIBRARY_K_2_part2", str)
    game_journal.add_path("@lore;@lore_ib;{10}Two complementary areas;{20}Part 2")

    local str = "Under the ground in the Botany Lab, as well "
        .. "as below this very library, there are caves. "
        .. "The coarsest level caves are called "
        .. "^x00ff00Imp Caves^!.\n\n"
        .. "The Imp Caves contain "
        .. "^xffff00Buttercups^! "
        .. "and ^xffa500Oranges^!."
    game_journal.add_txt(lang, "I1_LIBRARY_CAVES_imp", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{30}Botany caves;{10}Imp caves")

    game_journal.add_txt_cb(lang, "I1_LIBRARY_CAVES_gnole",
        p.I1_LIBRARY_CAVES_gnole)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{30}Botany caves;{20}Gnole caves")

    game_journal.add_txt_cb(lang, "I1_LIBRARY_CAVES_demon",
        p.I1_LIBRARY_CAVES_demon)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{30}Botany caves;{30}Demon caves")

    game_journal.add_txt_cb(lang, "I1_LIBRARY_CAVES_orc",
        p.I1_LIBRARY_CAVES_orc)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{30}Botany caves;{40}Orc caves")

    game_journal.add_txt_cb(lang, "I1_LIBRARY_CAVES_beholder",
        p.I1_LIBRARY_CAVES_beholder)
    game_journal.add_path("@area;@area_lib;@area_lib_i1;{30}Botany caves;{50}Beholder caves")
end

--The locations of all weapon location rooms (meta).
function p.wep_location_locations()
    local str = "There is a room describing the locations of ^x00ff00Plasma^! "
        .. "upgrades in the center of each Jumbo Yellow Flower. "
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_plasma", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Cannon^! "
        .. "upgrades in the treasure room of Large Cannon Pyramids."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_cannon", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Laser^! "
        .. "upgrades in the center of Ice Moons."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_laser", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Rocket^! "
        .. "upgrades in the center of Suns."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_rocket", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Homing Rocket^! "
        .. "upgrades in Richmond Libraries (in the Sewers of Richmond Towns)."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_homing", str)
        game_journal.add_path("@wep;@wep_homing;@wep_homing_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Minigun^! "
        .. "upgrades at the top of Lighthouses (in Botany Lab Black Cubes)."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_mini", str)
    game_journal.add_path("@wep;@wep_mini;@wep_mini_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Railgun^! "
        .. "upgrades in the center of the Black Cubes in Mossy Air."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_railgun", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00EMP^! "
        .. "upgrades in the center of EMP Cities (in I2)."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_emp", str)
    game_journal.add_path("@wep;@wep_emp;@wep_emp_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Nuke^! "
        .. "upgrades at the top of Toronto Cities."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_nuke", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Dark Hole^! "
        .. "upgrades in the final treasure room of Catacombs."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_hole", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Health^! "
        .. "upgrades in each Huntington Town (in the center of Oranges)."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_health", str)
    game_journal.add_path("@item;@item_health;@item_health_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Armor^! "
        .. "in each Hinesburg Town (in Alpha Menger Sponges, in Space)."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_armor", str)
    game_journal.add_path("@item;@item_armor;@item_armor_loc;{10}Location room location")

    local str = "There is a room describing the locations of ^x00ff00Gold^! "
        .. "in each Montreal City (in I2)."
    game_journal.add_txt(lang, "I1_LIBRARY_INFO_LOCATIONS_gold", str)
    game_journal.add_path("@item;@item_gold;@item_gold_loc;{10}Location room location")
end

function p.I1_LIBRARY_CAVES_gnole(chunk_id)
    --Ignoring chunk_id.
    local str = "If you shrink and go into the walls of the Imp Caves, "
        .. "you enter the ^x00ff00Gnole Caves^!.\n\n"
        .. "These caves have slightly ^xffff00more Buttercups^! "
        .. "than do Imp Caves."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nIf you shrink again beware: Gnoles launch a homing missile "
            .. "when you are smaller than them. "
            .. "The same can be said for other members of the family: "
            .. "Demons, Orcs, Trolls, Hobgoblins, and Ogres."
    end
    return str
end

function p.I1_LIBRARY_CAVES_demon(chunk_id)
    --Ignoring chunk_id.
    local str = "If you shrink and go into the walls of the Gnole Caves, "
        .. "you enter the ^x00ff00Demon Caves^!.\n\n"
        .. "Here it is common to find ^xff00ffInfinity Flowers^!. "
        .. "You can also find ^xffff00Jumbo Yellow Flowers^! here."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nIn the center of some Demon Caves areas are red cubes which "
            .. "contain upgrades for your ^xff0000Homing Rocket weapon^!."
    end
    return str
end

function p.I1_LIBRARY_CAVES_orc(chunk_id)
    --Ignoring chunk_id.
    local str = "If you shrink and go into the walls of the Demon Caves, "
        .. "you enter ^x00ff00Orc Caves^!.\n\n"
        .. "These caves have a high density of Buttercups. "
    if( not game_genesis.enabled() ) then
        str = str .. "Indeed if you are very powerful, this is a great place "
            .. "to improve your Plasma weapon."
    end
    str = str .. "\n\nThere is also a high density of Infinity Flowers, "
        .. "and Jumbo Yellow Flowers."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nIn the center of some Orc Caves are Great Spiders.\n\n"
            .. "These have a great deal of health, but they drop a "
            .. "^x00ff00Minigun Max Ammo upgrade^!."
    end
    return str
end

function p.I1_LIBRARY_CAVES_beholder(chunk_id)
    --Ignoring chunk_id.
    local str = "If you shrink and go into the walls of the Orc Caves, "
        .. "you enter ^x00ff00Beholder Caves^!.\n\n"
        .. "These do NOT have Buttercups, "
        .. "Infinity Flowers, or Jumbo Yellow Flowers.\n\n"
        .. "However they do have Ying Flowers, Oranges, and ^xff00ffPink Trees^!."
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nThey are very calm, compared to the insanity of the "
            .. "Orc and Demon caves.\n\n"
            .. "There are a handful of Beholders in these caves. "
            .. "In these caves you can find upgrades to increase the "
            .. "^x00ff00velocity^! "
            .. "of your Rocket and Dark Hole!"
    end
    return str
end

-------------------------------------------------------------------------------
