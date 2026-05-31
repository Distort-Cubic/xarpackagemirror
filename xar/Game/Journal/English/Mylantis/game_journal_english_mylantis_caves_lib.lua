--File: game_journal_english_mylantis_caves_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is the library for the Mylantis Caves: "
        .. "the caves that are beneath the surface of the planet Mylantis.\n\n"
        .. "At the top of the caves is The Crust, "
        .. "which is one megachunk (M-chunk) thick. "
        .. "This is followed by 11 layers of caves. "
        .. "The layer just below The Crust is Layer 1. "
        .. "The layer just below that is Layer 2, etc. "
        .. "Each layer is (almost) one M-chunk thick, "
        .. "and between any two adjacent layers there is a cavern "
        .. "that is one K-chunk (kilochunk) thick."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_WP_overview1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_gen;{10}Part 1")

    local str = "Below the 11 layers is the Great Mylantis Cavern, "
        .. "which is a cavern that is one M-chunk thick!\n\n"
        .. "At the bottom of this cavern is the Mylantis Red Caves, "
        .. "which is a layer of caves that is one M-chunk thick. "
        .. "These Red Caves are a fantastic place to upgrade your "
        .. "Homing Rocket weapon."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_WP_overview2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_gen;{20}Part 2")

    local str = "You have already made your way through "
        .. "\"The Crust\" of the Mylantis Planet. "
        .. "The main part of The Crust is brown and is "
        .. "14 K-chunks thick. "
        .. "Right above and below this main brown part "
        .. "are two orange layers (the bread) that are "
        .. "each one K-chunk thick. "
        .. "The picture shows the bottom "
        .. "on the main brown part of The Crust, "
        .. "just above the bottom bread layer.\n\n"
        .. "It is here (below the main brown part but "
        .. "above the bottom bread) "
        .. "^x0000ffyou can find waypoints^! "
        .. "(in the picture they are the "
        .. "blue checkered blocks). "
        .. "^xff0000Below that spot, it is more difficult to "
        .. "find waypoints.^!\n\n"
        .. "Below the bottom orange bread is a cavern, "
        .. "and then below that is Layer 1 of the "
        .. "Mylantis caves.\n\n"
        .. "The main brown part of The Crust contains many "
        .. "^x00ff00Science Cores^!, which makes it a "
        .. "^xff00ffgreat place to farm for "
        .. "EMP Max Ammo upgrades^!."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_CRUST", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_crust")

    local str = "You can find these I3 WIG Flowers "
        .. "in the Mylantis Caves "
        .. "(but not in or above The Crust).\n\n"
        .. "They are on top of the green blocks that are "
        .. "sparsely spread through the caves. "
        .. "To access one, you must shrink at one of the "
        .. "shrinkers in the caves and then go to a green "
        .. "block to find a WIG flower on top.\n\n"
        .. "The primary purpose of these flowers that are in "
        .. "these caves is to give you a way back into "
        .. "the caves. That is, if you enter one of these WIG "
        .. "flowers and find appropriate ^xff00ffPink Rings^! "
        .. "inside, then those will teleport you to the "
        .. "Pink Sphere at the top of the WIG Flower."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_WIG", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_wig")

    local str = "The monsters in the Mylantis Caves "
        .. "come in \"patches\". "
        .. "Each patch is a K-chunk (16x16x16 chunks). "
        .. "There are 15 different patch types. "
        .. "Every K-chunk of the Mylantis Caves is "
        .. "of one of the 15 types at random. "
        .. "Layer 1 only uses patches 1 through 5. "
        .. "Layer 2 only uses patches 2 through 6, "
        .. "etc. "
        .. "Layer 11 only uses patches 11 through 15."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_PATCHES_overview", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_patch;{10}Overview")

    local str = "The first 5 patches contain typical monsters. "
        .. "You can get through these patches by using your EMP. "
        .. "Within each patch there is treasure that is spread out. "
        .. "Patch 1 has Cannon Max Ammo upgrades, "
        .. "Patch 2 has Cannon Damage upgrades, "
        .. "Patch 3 has Laser Damage upgrades, "
        .. "Patch 4 has Rocket Damage upgrades, and "
        .. "Patch 5 has Homing upgrades.\n\n"
    str = str .. p.patch_blurb(1) .. "\n"
    str = str .. p.patch_blurb(2) .. "\n"
    str = str .. p.patch_blurb(3) .. "\n"
    str = str .. p.patch_blurb(4) .. "\n"
    str = str .. p.patch_blurb(5)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_PATCHES_1_to_5", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_patch;{20}Patches 1-5")

    local str = "Patches 6 and 7 contain rats. "
        .. "These are immune to EMP, but they can "
        .. "be frozen by your Laser. "
        .. "Rat type monsters give you "
        .. "^xff00ff4 times the experience as normal^!.\n\n"
        .. "Patches 6 and 7 both have Rocket Velocity upgrades.\n\n"
    str = str .. p.patch_blurb(6) .. "\n"
    str = str .. p.patch_blurb(7)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_PATCHES_6_to_7", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_patch;{30}Patches 6-7")

    local str = "These patches contain Sliver type monsters. "
        .. "These are immune to EMP, but they can "
        .. "be frozen by your Laser. "
        .. "You might want to use your Laser to go "
        .. "through these patches.\n\n"
        .. "Patches 8 and 9 both have "
        .. "Rocket Velocity upgrades.\n\n"
        .. "Patch 10 has 100 gold items.\n\n"
    str = str .. p.patch_blurb(8) .. "\n"
    str = str .. p.patch_blurb(9) .. "\n"
    str = str .. p.patch_blurb(10)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_PATCHES_8_to_10", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_patch;{40}Patches 8-10")

    local str = ""
    str = str .. p.patch_blurb(11)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_PATCHES_11", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_patch;{50}Patch 11")

    local str = "These patches contain Lampreys, which "
        .. "are immune to BOTH EMP and being frozen. "
        .. "You will want to nuke your way through "
        .. "to the bottom.\n\n"
        .. "Patch 12 has 600% armor. "
        .. "Patches 13, 14, and 15 have lots of gold.\n\n"
    -- str = str .. p.patch_blurb(11) .. "\n"
    str = str .. p.patch_blurb(12) .. "\n"
    str = str .. p.patch_blurb(13) .. "\n"
    str = str .. p.patch_blurb(14) .. "\n"
    str = str .. p.patch_blurb(15)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_PATCHES_12_to_15", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_patch;{60}Patches 12-15")

    local str = p.full_blurb(1)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{10}Layer 1")

    local str = p.full_blurb(2)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{20}Layer 2")

    local str = p.full_blurb(3)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{30}Layer 3")

    local str = p.full_blurb(4)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer4", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{40}Layer 4")

    local str = p.full_blurb(5)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer5", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{50}Layer 5")

    local str = p.full_blurb(6)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer6", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{60}Layer 6")

    local str = p.full_blurb(7)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer7", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{70}Layer 7")

    local str = p.full_blurb(8)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer8", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{80}Layer 8")

    local str = p.full_blurb(9)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer9", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{90}Layer 9")

    local str = p.full_blurb(10)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer10", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{100}Layer 10")

    local str = p.full_blurb(11)
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_layer11", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_layer;{110}Layer 11")

    local str = "Both RejuvenX Capsules and Nuke Arsenals become "
        .. "more common as you go down the caves, with the "
        .. "exception that there are no Nuke Arsenals on "
        .. "Layers 1 and 11."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_GEMS_silos", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_silo")

    local str = "Just below Layer 11 is the "
        .. "^x00ff00Great Mylantis Cavern^!. "
        .. "This cavern is one M-chunk (megachunk) "
        .. "thick.\n\n"
        .. "There are lots of waypoints in this cavern."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_GREAT_CAVERN", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_cavern")

    local str = "Just below the Great Mylantis Cavern "
        .. "are the ^x00ff00Mylantis Red Caves^!. "
        .. "These are one M-chunk thick. "
        .. "As you get closer to the bottom, there "
        .. "is a higher density of Homing Rocket upgrades."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_RED_CAVES_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_red;{10}Overview")

    local str = "At the very bottom of the Red Caves are "
        .. "Amethyst Gems. "
        .. "These are K-chunks (16x16x16 chunks). "
        .. "They look just like the purple block next "
        .. "to this text box."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_RED_CAVES_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_mc;@area_lib_mc_red;{20}Amethysts")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "When I discovered the hidden world, "
        .. "it caused a feeling... no that's not right. "
        .. "It caused a state of consciousness that I "
        .. "instantly recognized even though I had never "
        .. "experienced it before.\n\n"
        .. "Then funny thing was, each time I would leave the "
        .. "hidden world, I would forget the feeling. "
        .. "I could never quite remember what it felt like to "
        .. "experience it.\n\n"
        .. "But then when I entered back into the hidden world, "
        .. "the feeling would come back and I would instantly "
        .. "recognize it again. "
        .. "Like a lost melody from my mind that I cannot remember, "
        .. "but when I hear it I know it is the one I heard before."
    game_journal.add_txt(lang, "MYLANTIS_CAVES_LIB_TREASURE", str)
    game_journal.add_path("@lore;@lore_k_hidden;@lore_k_hidden_melody;{10}Instantly recognize it again")
end

function p.patch_blurb(patch)
    --Lua needs a switch statement.
    if    ( patch == 1 ) then return "Patch 1: guerillas and unruly juggernauts"
    elseif( patch == 2 ) then return "Patch 2: arch menaces and orcs"
    elseif( patch == 3 ) then return "Patch 3: minor gremlins, trolls, and mercenaries"
    elseif( patch == 4 ) then return "Patch 4: war vulcans and hobgoblins"
    elseif( patch == 5 ) then return "Patch 5: minor guardians and ogres"
    elseif( patch == 6 ) then return "Patch 6: ^x00ff00rats^!"
    elseif( patch == 7 ) then return "Patch 7: ^x00ff00greater rats^!"
    elseif( patch == 8 ) then return "Patch 8: ^x0000fflesser slivers^!"
    elseif( patch == 9 ) then return "Patch 9: ^x0000ffslivers^!"
    elseif( patch == 10 ) then return "Patch 10: ^x0000ffslivers^!"
    elseif( patch == 11 ) then return "Patch 11: empty (no monsters)"
    elseif( patch == 12 ) then return "Patch 12: ^xff0000yellow lampreys^!"
    elseif( patch == 13 ) then return "Patch 13: ^xff0000green lampreys^!"
    elseif( patch == 14 ) then return "Patch 14: ^xff0000red lampreys^!"
    elseif( patch == 15 ) then return "Patch 15: ^xff0000blue lampreys^!"
    end
    return "ERROR"
end

function p.layer_blurb(layer)
    --Lua needs a switch statement.
    if( layer == 1 ) then
        return "The Mylantis Caves Layer 1 is just below "
            .. "The Crust. ^xff0000There are no "
            .. "Nuclear Arsenal chunks "
            .. "in this layer.^!"
    elseif( layer == 2 ) then
        return "Layer 2 has occasional K-chunk holes "
            .. "with Blackberries in their centers."
    elseif( layer == 3 ) then
        return "Layer 3 has occasional K-chunk holes "
            .. "with Alpha Menger Sponges in their centers."
    elseif( layer == 4 ) then
        return "Layer 4 has occasional K-chunk holes "
            .. "with Beta Menger Sponges in their centers. "
            .. "There are ^x00ff00Topaz Gem^! chunks "
            .. "in this layer. "
            .. "These gems have Max Ammo upgrades "
            .. "for all of your weapons."
    elseif( layer == 5 ) then
        return "Layer 5 has occasional K-chunk holes "
            .. "with Red Maze Flowers in their centers."
    elseif( layer == 6 ) then
        return "Layer 6 has occasional K-chunk holes "
            .. "with Large White Flowers in their centers. "
            .. "There are ^x00ff00Iolite Gem^! chunks "
            .. "in this layer. "
            .. "These gems have several Nuke Radius upgrades."
    elseif( layer == 7 ) then
        return "Layer 7 has occasional K-chunk holes "
            .. "with Jackfruits in their centers. "
            .. "There are also huge caves with "
            .. "Nuclear Refineries "
            .. "in their centers."
    elseif( layer == 8 ) then
        return "Layer 8 has occasional K-chunk holes "
            .. "with Yellow Mushrooms in their centers. "
            .. "There are ^x00ff00Emerald Gem^! chunks "
            .. "in this layer. "
            .. "These gems have several EMP Damage upgrades. "
            .. "There are also huge caves with "
            .. "Nuclear Ore Miners "
            .. "in their centers."
    elseif( layer == 9 ) then
        return "Layer 9 has occasional K-chunk holes "
            .. "with Turnips in their centers. "
            .. "There are also huge caves with Great Spiders "
            .. "in their centers."
    elseif( layer == 10 ) then
        return "Layer 10 has occasional K-chunk holes "
            .. "with portals to Hell in their centers. "
            .. "In this layer you can find ^x00ff00Denver Cities^!. "
            .. "There are also huge caves with Motherships "
            .. "in their centers."
    elseif( layer == 11 ) then
        return "Layer 11 has occasional K-chunk holes "
            .. "with Moon Flowers in their centers. "
            .. "^xff0000There are no Nuclear Arsenal chunks "
            .. "in this layer.^!"
    end
    return "ERROR";
end

function p.full_blurb(layer)
    local str = p.layer_blurb(layer) .. "\n\n"
    str = str .. "Monster patches: " .. tostring(layer)
        .. " to " .. tostring(layer+4) .. "\n"
    local min_layer = layer
    local max_layer = layer+4
    for i = min_layer,max_layer do
        str = str .. p.patch_blurb(i)
        if( i < max_layer ) then str = str .. "\n" end
    end
    return str
end

-------------------------------------------------------------------------------
