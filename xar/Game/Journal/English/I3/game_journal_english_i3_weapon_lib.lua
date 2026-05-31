--File: game_journal_english_i3_weapon_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "At the beginning of the game, "
        .. "every weapon has two modes. "
        .. "You can use each mode by selecting the "
        .. "weapon (by pressing a number) and then "
        .. "either left or right clicking.\n\n"
        .. "However there are boxes you can find that "
        .. "when you use them, they will unlock additional "
        .. "weapon modes for you to use.\n\n"
        .. "By pressing F7 you can select a weapon and then "
        .. "select which two modes "
        .. "you want to currently be equipped for you to use "
        .. "with left and right clicking."
    game_journal.add_txt(lang, "WEAPON_LIB_INTRO", str)
    --I think it is fine NOT putting this in the journal.

    ---------------------------------------------

    local str = "Plasma mode #1 is \"^x00ff00Basic High DPA^!\".\n\n"
        .. "It has very low damage per second (dps) but "
        .. "very high damage per ammo (dpa). "
        .. "In fact, it has the maximum amount of dpa for the Plasma.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode1", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_1;{10}Description")

    local str = "Plasma mode #2 is \"^x00ff00Rapid Fire^!\".\n\n"
        .. "It has relatively high damage per second (dps) but "
        .. "low per ammo (dpa).\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode2", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_2;{10}Description")

    local str = "Plasma mode #3 is the \"^x00ff00Plasma Shotgun^!\".\n\n"
        .. "This also has the maximum amount of damage per ammo (dpa) "
        .. "for the Plasma (it is tied with \"Basic High DPA\" mode). \n\n"
        .. "The fire rate of this weapon never changes, so "
        .. "when you first get this mode it has better dps than Rapid Fire, "
        .. "but as you get more Fire Rate upgrades the Rapid Fire mode "
        .. "approaches this. "
        .. "Also as you get more Fire Rate upgrades, the Hyper Rapid Fire mode "
        .. "goes from being tied with the Plasma Shotgun for dps to "
        .. "far surpassing it."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode3", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_3;{10}Description")

    local str = "1) One place to unlock the Plasma Shotgun mode is in the towns of Essex. "
        .. "These can be found in Beets in Turnip Caves.\n\n"
        .. "2) You can also unlock the Plasma Shotgun mode in the treasure room of "
        .. "Fire Rate Moons. These can be found in Outer Space." 
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode3_where", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_3;{20}Where to find")

    local str = "Plasma mode #4 is \"^x00ff00Hyper Rapid Fire^!\".\n\n"
        .. "This has poor damage per ammo (dpa).\n\n"
        .. "Once you get lots of Fire Rate upgrades, this mode has the "
        .. "highest damage per second (dps) by far of any Plasma mode."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode4", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_4;{10}Description")

    local str = "You can unlock the Hyper Rapid Fire mode is in Beta Sponge Towns "
        .. "deep inside Beta Sponges. "
        .. "You can find a Beta Sponge in the Mylantis Underground (beneath the Top Garden)."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode4_where", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_4;{20}Where to find")

    local str = "Plasma mode #5 is the \"^x00ff00Lightning Rifle^!\".\n\n"
        .. "This has terrible damage per ammo (dpa) "
        .. "and ok damage per second (dps).\n\n"
        .. "However it is an instantaneous weapon (like the Railgun)."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode5", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_5;{10}Description")

    local str = "You can unlock the Lightning Rifle mode in Burlington. "
        .. "Specifically, look in the white rooms with no windows. "
        .. "Some of these rooms have it."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode5_where", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_5;{20}Where to find")

    local str = "Plasma mode #6 is the \"^x00ff00Flare^!\".\n\n"
        .. "This does no damage, but it can be useful in rooms that are "
        .. "completely dark."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode6", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_6;{10}Description")

    local str = "You can unlock the Flare mode in Tweedle Haunted Houses. "
        .. "These are in Tweedle-Dee Air."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_1_mode6_where", str)
    game_journal.add_path("@wep;@wep_plasma;@wep_plasma_mode_6;{20}Where to find")

    ---------------------------------------------

    local str = "Cannon mode #1 is the \"^x00ff00Blunderbuss^!\".\n\n"
        .. "This is a good short range weapon, but it does not damage "
        .. "monsters larger than you. "
        .. "Make sure you have enough \"Num Shots\" upgrades to make "
        .. "the weapon useful.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_2_mode1", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_mode_1;{10}Description")

    local str = "Cannon mode #2 is \"^x00ff00Tommy Gun^!\".\n\n"
        .. "This is designed to replace the Blunderbuss. "
        .. "Every shot is equivalent to 3 Blunderbuss shots "
        .. "(and every shot costs 3 shells). "
        .. "So, it has the same Damage Per Ammo (DPA) as the Blunderbuss "
        .. "but it has a much higher DPS. "
        .. "It can damage long range monsters that are larger "
        .. "than you."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_2_mode2", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_mode_2;{10}Description")

    local str = "You can unlock the Tommy Gun mode in Huntington towns "
        .. "and in Toronto Mazes."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_2_mode2_where", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_mode_2;{20}Where to find")

    local str = "Cannon mode #3 is \"^x00ff00Chaining Cannon Ball^!\".\n\n"
        .. "This can damage monsters larger than you. "
        .. "Once it kills a monster, it moves on to the next target.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_2_mode3", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_mode_3;{10}Description")

    local str = "Cannon mode #4 is \"^x00ff00The Sheriff^!\".\n\n"
        .. "It is just like the Chaining Cannon Ball, "
        .. "except it takes more cannon ammo and does more damage.\n\n"
        .. "Specifically, it takes 20 cannon ammo and does 20 times the damage "
        .. "as the Chaining Cannon Ball. Recall that the Chaining Cannon Ball "
        .. "only takes one cannon ammo.\n\n"
        .. "Also, The Sheriff does not target monsters that are frozen."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_2_mode4", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_mode_4;{10}Description")

    local str = "You can unlock the The Sheriff mode in "
        .. "The Great Mylantis Cavern."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_2_mode4_where", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_mode_4;{20}Where to find")

    local str = "Cannon mode #5 is \"^x00ff00The Judge^!\".\n\n"
        .. "It is just like the Chaining Cannon Ball, "
        .. "except it takes a huge amount of cannon ammo and does a huge amount of damage.\n\n"
        .. "Specifically, it takes 200 cannon ammo and does 200 times the damage "
        .. "as the Chaining Cannon Ball.\n\n"
        .. "Just like The Sheriff, The Judge does not target monsters that are frozen."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_2_mode5", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_mode_5;{10}Description")

    local str = "You can unlock the The Judge mode in "
        .. "The Great Mylantis Cavern."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_2_mode5_where", str)
    game_journal.add_path("@wep;@wep_cannon;@wep_cannon_mode_5;{20}Where to find")

    ---------------------------------------------

    local str = "Laser mode #1 is \"^x00ff00Ice Laser^!\".\n\n"
        .. "It freezes monsters and does a small amount of damage. "
        .. "It also refills your shield when you hit a monster.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_3_mode1", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_mode_1;{10}Description")

    local str = "Laser mode #2 is \"^x00ff00Cold Beam^!\".\n\n"
        .. "This costs 2 ammo, but freezes monsters for 2.5 times the amount of time "
        .. "as the Ice Laser."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_3_mode2", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_mode_2;{10}Description")

    local str = "You can find the Cold Beam in I2 Mountains. "
        .. "These are deep inside I2. "
        .. "You can find such mountains if you shrink enough times in "
        .. "an I2 Ostrich Fern."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_3_mode2_where", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_mode_2;{10}Where to find")

    local str = "Laser mode #3 is \"^x00ff00Freeze Ray^!\".\n\n"
        .. "This costs 2 ammo and freezes monsters for 2 times "
        .. "the amount of time as the Ice Laser. "
        .. "However the freeze time here is \"stacking\" "
        .. "(but the Ice Laser and Cold Beam are NOT stacking)."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_3_mode3", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_mode_3;{10}Description")

    local str = "You can find the Freeze Ray at the end of Deep Sliver Mazes. "
        .. "To get a description of where to find these mazes, go to the "
        .. "pyramid structures in Rivers in I3."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_3_mode3_where", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_mode_3;{10}Where to find")

    local str = "Laser mode #4 is the \"^x00ff00Laser Disco^!\".\n\n"
        .. "This uses 8 ammo and does a lot of damage. "
        .. "If it kills a monster, it shoots Ice Laser blasts "
        .. "at all nearby monsters.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_3_mode4", str)
    game_journal.add_path("@wep;@wep_laser;@wep_laser_mode_4;{10}Description")

    ---------------------------------------------

    local str = "Rocket mode #1 is \"^x00ff00Basic Rockets^!\".\n\n"
        .. "It has medium damage per second (dps) and "
        .. "medium damage per ammo (dpa). "
        .. "What is useful about these rockets is they have an explosion radius.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_4_mode1", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_mode_1;{10}Description")

    local str = "Rocket mode #2 is \"^x00ff00High Velocity Rockets^!\".\n\n"
        .. "It has high damage per second (dps) and "
        .. "^xff0000low damage per ammo (dpa).^! "
        .. "^x00ff00However the rockets travel at a high velocity.^!"
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_4_mode2", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_mode_2;{10}Description")

    local str = "You can unlock the High Velocity mode "
        .. "in the treasure rooms of Mahogany Cellars.\n\n"
        .. "You can also unlock this weapon mode in the deep levels "
        .. "of Golden Yellow Flowers. "
        .. "You can find such a flowers in the basements of Lighthouses."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_4_mode2_where", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_mode_2;{20}Where to find")

    local str = "Rocket mode #3 is \"^x00ff00Big Radius Rockets^!\".\n\n"
        .. "This has medium damage per second (dps) and "
        .. "medium damage per ammo (dpa). "
        .. "^x00ff00However the explosion radius is double the normal value."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_4_mode3", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_mode_3;{10}Description")

    local str = "You can unlock the Big Radius mode by reaching the center "
        .. "of a green treetop in the I3 Main Forest."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_4_mode3_where", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_mode_3;{20}Where to find")

    local str = "Rocket mode #4 is \"^x00ff00Kinetic Rockets^!\".\n\n"
        .. "It has a high damage per second (dps) and a high "
        .. "damage per ammo (dpa). "
        .. "^xff0000However, it has a low velocity and does not explode.^!\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_4_mode4", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_mode_4;{10}Description")

    local str = "Rocket mode #5 is \"^x00ff00Progressive Rockets^!\".\n\n"
        .. "It has a very high damage per second (dps) and a very high "
        .. "damage per ammo (dpa). "
        .. "^xff0000However, it has a very low velocity and does not explode."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_4_mode5", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_mode_5;{10}Description")

    local str = "You can unlock the Progressive Rocket mode by reaching the "
        .. "center of a green treetop in the I3 Main Forest, and then reaching "
        .. "the end of the inner tree inside that cavity. "
        .. "You want to find a branch of the inner tree that has a gear "
        .. "symbol at the end."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_4_mode5_where", str)
    game_journal.add_path("@wep;@wep_rocket;@wep_rocket_mode_5;{20}Where to find")

    ---------------------------------------------

    --No weapon 5 extra modes.

    ---------------------------------------------

    --No weapon 6 extra modes.

    ---------------------------------------------

    local str = "Railgun mode #1 is \"^x00ff00Classic Railgun^!\".\n\n"
        .. "It has high damage per second and damage per ammo.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_7_mode1", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_mode_1;{10}Description")

    local str = "Railgun mode #2 is \"^x00ff00Rapid Railgun^!\".\n\n"
        .. "This as the same damage per ammo as the Classic Railgun, "
        .. "but it has an ^x00ff00extremely high damage per second^!.\n\n"
        .. "^xff0000It is not very accurate.^!"
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_7_mode2", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_mode_2;{10}Description")

    local str = "You can unlock the Rapid Railgun mode "
        .. "in the treasure room of Williston Caves.\n\n"
        .. "You can also find it in the town of Starksboro, "
        .. "but that is more difficult to reach."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_7_mode2_where", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_mode_2;{20}Where to find")

    local str = "Railgun mode #3 is \"^x00ff00Vampire Railgun^!\".\n\n"
        .. "This has half the damage per ammo and damage per second as the "
        .. "Classic Railgun.\n\n"
        .. "^x00ff00However it steals enemy health, which makes it extremely useful. "
        .. "You can use this by pressing R. In some areas, you may want to use "
        .. "this constantly.^!\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_7_mode3", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_mode_3;{10}Description")

    local str = "Railgun mode #4 is \"^x00ff00Super Vampire Railgun^!\".\n\n"
        .. "This is the best of both worlds of the Classic Railgun and the Vampire Railgun. "
        .. "It has the same damage per ammo and damage per second as the Classic Railgun. "
        .. "And it has the same health stealing amount as the Vampire Railgun. "
        .. "Also, it recharges your shield when you hit a monster.\n\n"
        .. "So, it makes sense to use the Rapid Railgun and the Super Vampire Railgun "
        .. "as your primary and secondary once you have them."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_7_mode4", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_mode_4;{10}Description")

    local str = "You can unlock the Super Vampire Railgun "
        .. "in the treasure room of a Blue Mushroom."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_7_mode4_where", str)
    game_journal.add_path("@wep;@wep_rail;@wep_rail_mode_4;{20}Where to find")

    ---------------------------------------------

    --No weapon 8 extra modes.

    ---------------------------------------------

    local str = "Nuke mode #1 is \"^x00ff00High Damage^!\".\n\n"
        .. "This has a slow velocity and small explosion radius, "
        .. "but it has high damage.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_9_mode1", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_mode_1;{10}Description")

    local str = "Nuke mode #2 is \"^x00ff00High Velocity and Radius^!\".\n\n"
        .. "This only does half the damage as High Damage mode, but "
        .. "the explosion radius is doubled and the velocity is tripled.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_9_mode2", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_mode_2;{10}Description")

    local str = "Nuke mode #3 is \"^x00ff00Nuclear Pulse Propulsion^!\".\n\n"
        .. "When this kind of nuke is used, "
        .. "it is equivalent to detonating a High Damage nuke "
        .. "at the player's location.\n\n"
        .. "^x00ff00However, the player will be propelled forward "
        .. "at a great velocity.^!"
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_9_mode3", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_mode_3;{10}Description")

    local str = "You can unlock the Nuclear Pulse Propulsion mode "
        .. "by reaching the orange buildings inside Desert Flowers "
        .. "(in I3 Deserts)."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_9_mode3_where", str)
    game_journal.add_path("@wep;@wep_nuke;@wep_nuke_mode_3;{20}Where to find")

    ---------------------------------------------

    local str = "Dark hole mode #1 is \"^x00ff00Standard Fire^!\".\n\n"
        .. "If you hold this down, it charges it up.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_0_mode1", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_1;{10}Description")

    local str = "Dark hole mode #2 is \"^x00ff00Exchange health for ammo^!\".\n\n"
        .. "When you use this mode, you lose 100 health but gain 1 dark hole.\n\n"
        .. "This mode comes by default."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_0_mode2", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_2;{10}Description")

    local str = "Dark hole mode #3 is the \"^x00ff00Black Hole Drive^!\".\n\n"
        .. "This requires 20 dark holes. "
        .. "When you use this, it decreases your air drag for 30 seconds."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_0_mode3", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_3;{10}Description")

    local str = "You can unlock the Black Hole Drive "
        .. "in the treasure room of Catacombs."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_0_mode3_where", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_3;{20}Where to find")

    local str = "Dark hole mode #4 is the \"^x00ff00Quasar Drive^!\".\n\n"
        .. "This requires ^xff000060^! dark holes. "
        .. "When you use this, it decreases your air drag for 30 seconds. "
        .. "It will make you move faster than the Black Hole Drive."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_0_mode4", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_4;{10}Description")

    local str = "You can unlock the Quasar Drive "
        .. "in the treasure room of Supermassive Black Holes."
    game_journal.add_txt(lang, "WEAPON_LIB_WEP_0_mode4_where", str)
    game_journal.add_path("@wep;@wep_hole;@wep_hole_mode_4;{20}Where to find")
end

-------------------------------------------------------------------------------
