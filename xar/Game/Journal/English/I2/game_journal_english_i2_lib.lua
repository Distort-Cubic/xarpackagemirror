--File: game_journal_english_i2_lib.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    game_journal.add_txt_cb(lang, "I2_LIBRARY_INOUT_1_montreal",
        p.I2_LIBRARY_INOUT_1_montreal)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{40}Towns / cities;{10}Montreal")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_INOUT_1_toronto",
        p.I2_LIBRARY_INOUT_1_toronto)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{40}Towns / cities;{20}Toronto")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_INOUT_1_danville",
        p.I2_LIBRARY_INOUT_1_danville)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{40}Towns / cities;{30}Danville")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_INOUT_2_part1",
        p.I2_LIBRARY_INOUT_2_part1)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{10}Ways into I2;{10}Part 1")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_INOUT_2_part2",
        p.I2_LIBRARY_INOUT_2_part2)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{10}Ways into I2;{20}Part 2")

    local str = "Category 2:\n\n"
        .. "1) Montreal, Toronto, and Danville.\n\n"
        .. "2) from the end of the maze of a Green Shrink Box in Stoney Air; "
        .. "there are many places in I2 where there is Stoney Air."
    game_journal.add_txt(lang, "I2_LIBRARY_INOUT_2_part3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{10}Ways into I2;{30}Part 3")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_INOUT_3_part1",
        p.I2_LIBRARY_INOUT_3_part1)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{20}Ways out of I2;{10}Overview")

    local str = "This is the ^x00ff00Standard Portal from I2 to I1^!.\n\n"
        .. "It is also called the ^xff00ffScorpius Portal^!.\n\n"
        .. "From a distance, it looks like a block with "
        .. "\"I1\" in red written on it.\n\n"
        .. "What is special about this is "
        .. "^xff00ffthere is no Pink Sphere^! "
        .. "(hence the word \"portal\")."
    game_journal.add_txt(lang, "I2_LIBRARY_INOUT_3_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{20}Ways out of I2;{20}Scorpius Portal;{10}Part 1")

    local str = "Places where you can find a Scorpius Portal:\n\n"
        .. "1) Laboratory Vine Central Shaft."
    game_journal.add_txt(lang, "I2_LIBRARY_INOUT_3_part3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{20}Ways out of I2;{20}Scorpius Portal;{20}Part 2")

    local str = "^x00ff00Some ways to enter I3:^!\n\n"
        .. "Look for a block with \"I3\" written on it in green. "
        .. "The most common way to enter I3 is via an "
        .. "^xff00ffI3 WIG Flower^!. Here are some places to find them:\n\n"
        .. "1) The vault in this library\n\n"
        .. "2) Common Gate into I3\n\n"
        .. "3) The Mirror Gate into I3 (a house of glass, in the Fanatic Lattice)\n\n"
        .. "4) Nuke Radius Caves (the orange cubes in the Fanatic Lattice)\n\n"
        .. "5) Toronto Mazes"
    game_journal.add_txt(lang, "I2_LIBRARY_INOUT_4", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{30}Ways into I3")
    game_journal.add_path("@quest;@quest_i2;@quest_i2_enteri3")

    local str = "Message from Proxima Centauri:\n\n"
        .. "^x0000ffMy research area is in the Botany of Inner Space "
        .. "(Inner Botany Theory). My advisor was SN1987A and much "
        .. "of my research was done in his Botany Lab.\n\n"
        .. "My primary focus is to graft part of one flower onto another "
        .. "to create a sort of hybrid.\n\n"
        .. "A team which explored I2 brought me a sample of the "
        .. "\"Group #3 Part of the Infinity Flower\", commonly called \"I3\". "
        .. "I was able to graft this onto a flower which grows abundantly. "
        .. "Now entering I3 is easier: you just need to find one of my flowers.\n\n"
        .. "My flower is called an ^x00ff00I3 WIG Flower^!^x0000ff."
    game_journal.add_txt(lang, "I2_LIBRARY_WIG_part1", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_wig;{10}Part 1")

    local str = "^x0000ffI had originally planned to call my flower a "
        .. "\"Hybrid Infinity Flower\". "
        .. "However, here is the story:\n\n"
        .. "I was presenting my new flower at a conference and to my amazement the "
        .. "infamous Sagittarius A* was in the audience.\n\n"
        .. "After my talk, he approached me with a smile and thanked me for my work. "
        .. "He seemed to really like the Pink Sphere at the top of the flower. "
        .. "He said that \"WIG Flower\" was a more canonical name for my creation. "
        .. "I am not sure what WIG means, or even if it is an acronym, "
        .. "but I am going with his advice because old Sagy is privy "
        .. "to more of the bigger picture than most."
    game_journal.add_txt(lang, "I2_LIBRARY_WIG_part2", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_wig;{20}Part 2")

    local str = "^x0000ffOthers have copied my work in taking part of the Infinity Flower and "
        .. "grafting it onto a more common flower.  These are all called \"WIG Flowers\", "
        .. "provided they have a Pink Sphere.\n\n"
        .. "^xff0000That jokester TON 618 created a prank version of an I3 WIG Flower "
        .. "that simply contains another prank I3 WIG Flower. So, you cannot use "
        .. "those to go anywhere. There are also prank I2 WIG Flowers.^!"
    game_journal.add_txt(lang, "I2_LIBRARY_WIG_part3", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_wig;{30}Part 3")

    local str = "^x0000ffI am so proud of my ^x00ff00I3 WIG Flower^!^x0000ff.\n\n"
        .. "Even though I hope it will be common within the Xar universe, "
        .. "I want to make sure a copy is stored safely as a backup.\n\n"
        .. "So, I have put an I3 WIG Flower within this red safe right here "
        .. "(in the I2 Library).\n\n"
        .. "^xff0000To get to the flower, you need to go through 4 5x5x5 mazes.^!"
    game_journal.add_txt(lang, "I2_LIBRARY_WIG_part4", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_wig;{40}Part 4")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_RAINBOW_part1",
        p.I2_LIBRARY_RAINBOW_part1)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{10}Rainbow flower;{10}Part 1")

    local str = "^x0000ffA Rainbow Flower has a Pink Ring, and also an I3 WIG Flower "
        .. "(which has a Pink Sphere). "
        .. "So you can \"chain\" these Rainbow Flowers together "
        .. "(to form \"Rainbow Chains\"). "
        .. "You do this by having the Pink Ring of one Rainbow Flower bring you "
        .. "to the Pink Sphere on the WIG Flower of a larger Rainbow Flower "
        .. "(one closer to the root of the chunk tree).\n\n"
        .. "The exact details of this chaining process are somewhat confidential, "
        .. "but most Inner Botanists know the procedure by heart. "
    game_journal.add_txt(lang, "I2_LIBRARY_RAINBOW_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{10}Rainbow flower;{20}Part 2")

    local str = "^x0000ffNeedless to say, the chaining procedure consists of 3 parts:\n\n"
        .. "1) Chaining each Rainbow Flower to the next.\n\n"
        .. "2) Making sure the coarsest Rainbow Flower has a waypoint very close by "
        .. "(or very close by to the Pink Sphere that that flower teleports you to).\n\n"
        .. "3) Making sure you can teleport to a waypoint somewhat close to a Pink Ring "
        .. "that will bring you to the Pink Sphere of the WIG flower "
        .. "on the finest Rainbow Flower "
        .. "(or else simply find a waypoint close to the finest Rainbow Flower). "
    game_journal.add_txt(lang, "I2_LIBRARY_RAINBOW_part3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{10}Rainbow flower;{30}Part 3")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_SMALL_BLUE_FLOWER_part1",
        p.I2_LIBRARY_SMALL_BLUE_FLOWER_part1)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{20}Small blue flower;{10}Part 1")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_SMALL_BLUE_FLOWER_part2",
        p.I2_LIBRARY_SMALL_BLUE_FLOWER_part2)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{20}Small blue flower;{20}Part 2")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_SMALL_BLUE_FLOWER_part3",
        p.I2_LIBRARY_SMALL_BLUE_FLOWER_part3)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{20}Small blue flower;{30}Part 3")

    game_journal.add_txt_cb(lang, "I2_LIBRARY_SMALL_BLUE_FLOWER_part4",
        p.I2_LIBRARY_SMALL_BLUE_FLOWER_part4)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{20}Small blue flower;{40}Part 4")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "I have undergone a transition. "
        .. "In the past I yearned to enter the hidden world, "
        .. "and to prove that it existed.\n\n"
        .. "Now, on the other hand, I am stuck in the hidden world, "
        .. "and I cannot enter back into the normal world.\n\n"
        .. "More than that, I am doubting if I can prove the normal "
        .. "world exists, and I am even doubting the existence itself of the "
        .. "normal world. Perhaps it was just an illusion."
    game_journal.add_txt(lang, "I2_LIBRARY_K_2_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_encounter;{10}Part 1")

    local str = "^x00ff00"
        .. "I am doing two things: "
        .. "^xff00ffdoubting^! ^x00ff00and^! ^xff00ffforgetting^!. "
        .. "^x00ff00"
        .. "I begin to doubt if the normal world exists. "
        .. "Perhaps it was just a simulation carried out in the hidden "
        .. "world. "
        .. "Perhaps it was an illusion in my mind. "
        .. "What is my mind? "
        .. "Who am I?\n\n"
        .. "What is my name? "
        .. "Do I even have a name? "
        .. "I can't figure out my name, "
        .. "I do not think it is written down anywhere "
        .. "other than the letter \"K\". "
        .. "Why is that? "
        .. "Do I have a body?\n\n"
        .. "So yes, I am forgetting who I am, "
        .. "or even if I existed outside this place. "
        .. "Do I even have a friend who would come to save me? "
        .. "When I write these messages, am I just talking to myself? "
        .. "Does anything exist outside my mind?"
    game_journal.add_txt(lang, "I2_LIBRARY_K_2_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_encounter;{20}Part 2")

    local str = "^x00ff00"
        .. "I think me doubting if anything exists outside my mind "
        .. "is called \"solipsism\". "
        .. "How do I know that word? "
        .. "Did I invent it? "
        .. "Probably, I am pretty clever.\n\n"
        .. "And yet not clever enough to either enjoy my situation "
        .. "or pull myself out of it. "
        .. "Or maybe I thought it would just be more fun if "
        .. "someone existed outside of myself to rescue me. "
        .. "That must be it: I am freaky. "
        .. "Hmm. "
    game_journal.add_txt(lang, "I2_LIBRARY_K_2_part3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_encounter;{30}Part 3")

    local str = "^x00ff00No no no! Something exists outside of my mind... "
        .. "because YOU exist. Come on K... try to remember...\n\n"
        .. "Let's see, what was the critical event? "
        .. "I was exploring the halls of the Inner Mechanization Agency "
        .. "looking for the hidden floors.\n\n"
        .. "I was in a restricted area that I did not have "
        .. "authorization to be in. "
        .. "I saw someone walk around the corner. "
        .. "I darted quickly and bent over to use a water fountain. "
        .. "I drank the water as the person walked past.\n\n"
        .. "When the coast was clear, I stood up and I "
        .. "inadvertently looked at the bulletin board above the fountain.\n\n"
        .. "There was a piece of paper with a yin yang symbol on it "
        .. "with the words ^xff00ff\"Maybe it is hiding in plain sight\"^x00ff00."
    game_journal.add_txt(lang, "I2_LIBRARY_K_3_part1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_encounter;{40}Part 4")

    str = "^x00ff00The instant I saw the yin yang symbol "
        .. "my consciousness changed. "
        .. "I recognized it right away, even though I had never experienced it "
        .. "before. It was the hidden world of Xar I had been looking for in college. "
        .. "The inner world.\n\n"
        .. "^xff0000I panicked and shouted \"NO!\"\n\n"
        .. "^x00ff00Immediately I was snapped out of the Xar. "
        .. "But I would never be the same after that: I had seen the world.\n\n"
        .. "I grabbed the piece of paper, put it in my pocket, and rushed "
        .. "back to my office."
    game_journal.add_txt(lang, "I2_LIBRARY_K_3_part2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_encounter;{50}Part 5")

    p.trophy_room_locations()

    local str = "The ^x00ff00Fanatic Lattice^! is an ok place to get Cannon ammo. "
        .. "What is more distinctive about it is what grows on the walls.\n\n"
        .. "The light blue structures you can shrink and enter. "
        .. "Inside are the ^x00ff00Fanatic Blue Caves^!, "
        .. "which are an ok place to get gold.\n\n"
        .. "The orange cubes that hang below the light blue structures "
        .. "are called ^x00ff00Nuke Radius Caves^!, and they are a good place "
        .. "to get radius upgrades for your nuke.  They also contain I3 WIG Flowers. "
        .. "There are variants of the Nuke Radius Caves that look orange with "
        .. "and X on them. These do not have I3 WIG Flowers "
        .. "but are a ^xff00ffmuch better "
        .. "place to pick up nukes^!.\n\n"
    game_journal.add_txt(lang, "I2_LIBRARY_FANATIC_LATTICE_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{10}Fanatic lattice;{10}Part 1")

    local str = "There are green vines that hand down from the light blue structures. "
        .. "These are called ^x00ff00Laboratory Vines^!, and\n\n"
        .. "1) they have ^xff00ffIMPORTANT^! things growing on their sides and\n\n"
        .. "2) they have ^xff00ffScorpius Portals^! on their inside."
    game_journal.add_txt(lang, "I2_LIBRARY_FANATIC_LATTICE_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{10}Fanatic lattice;{20}Part 2")

    local str = "The black cubes with green \"I3\" symbols on them which are at "
        .. "the end of the light blue structures are ^x00ff00Mirror Gates^! to I3.\n\n"
        .. "These are probably the easiest ways to enter I3 in the sense that they "
        .. "have no monsters.\n\n"
        .. "But in another sense they are not easy.  Their house of mirrors (glass) "
        .. "style mazes have been known to induce madness."
    game_journal.add_txt(lang, "I2_LIBRARY_FANATIC_LATTICE_part3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{10}Fanatic lattice;{30}Part 3")

    local str = "This picture shows ^x00ff00Fanatic Weeds^! "
        .. "(also called Fanatic Lattice Growth). They are very common in I2.\n\n"
        .. "Their light blue cubes are actually Fanatic Blue Caves.\n\n"
        .. "The ground beneath these weeds is ^x00ff00Fanatic Grass^!, "
        .. "which is probably one of the best places to find Fanatic monsters, "
        .. "and is hence ^xff00ffone of the best places to get Dark Hole "
        .. "Max Ammo upgrades^!.";
    game_journal.add_txt(lang, "I2_LIBRARY_FANATIC_LATTICE_part4", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{30}Fanatic weed")

    local str = "The most common air in I2 is ^x00ff00Fanatic Island Air^!. "
        .. "It is called this because it contains ^x00ff00Fanatic Islands^! "
        .. "(and basically nothing else). "
        .. "To the left is a picture of a Fanatic Island.\n\n"
        .. "You should explore these well. "
        .. "At the very least, you must know that you can use these "
        .. "islands to enter and exit I2:\n\n"
        .. "At the bottom of the well is an in-only waypoint "
        .. "(so you can ^x00ff00enter I2^! from there).\n\n"
        .. "In the caves beneath the ground you can find blue "
        .. "checkered cubes containing Stoney Air "
        .. "(which you can use you ^x00ff00exit I2^!)."
    game_journal.add_txt(lang, "I2_LIBRARY_FANATIC_ISLAND_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{10}Fanatic island;{10}Part 1")

    local str = "Above the well is a text box describing Fanatic Islands. "
        .. "When you explore such an island, you should read that box.\n\n"
        .. "On a Fanatic Island you can often find a ^x00ff00Willow Tree^!. "
        .. "These are purple (see the picture) and often have "
        .. "^x00ff00Mystic Vines^! hanging from them, which are "
        .. "advanced places for improving your Dark Hole damage. "
        .. "There is also a Danville town in the trunk of each Willow Tree, "
        .. "which you can use to enter and exit I2.\n\n"
        .. "On a Fanatic Island you can find Woody Basements "
        .. "and Woody Cellars, which are good places for improving "
        .. "your Railgun."
    game_journal.add_txt(lang, "I2_LIBRARY_FANATIC_ISLAND_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{10}Fanatic island;{20}Part 2")

    local str = "Hanging from the trees of a Fanatic Island you can find "
        .. "vines with the number 1 on them. "
        .. "If you shrink inside of them, you can sometimes find vines "
        .. "with the number 2 on them. Etc. "
        .. "These numbered vines are described elsewhere on this floor."
    game_journal.add_txt(lang, "I2_LIBRARY_FANATIC_ISLAND_part3", str)
    --Don't need to put in journal (there is a similar one here).

    local str = "Hanging from the trees of a Fanatic Island you can find "
        .. "vines with the number 1 on them. "
        .. "If you shrink inside of them, you can sometimes find vines "
        .. "with the number 2 on them. Etc. "
        .. "Here, we will describe what are in these vines.\n\n"
        .. "^xff00ffYou will probably need to use your EMP to stun "
        .. "the Beholder monsters in these vines in order to explore deeper.^!"
    game_journal.add_txt(lang, "I2_LIBRARY_VINE_BUNDLES_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{20}Vine bundles;{10}Part 1")

    local str = "A vine with the number 1 on it has a chance of containing a "
        .. "^x00ff00Pirate Vine^!.\n\n"
        .. "It also has a chance of containing a vine with a 2 on it."
    game_journal.add_txt(lang, "I2_LIBRARY_VINE_BUNDLES_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{20}Vine bundles;{20}Part 2")

    local str = "A vine with the number 2 on it has a chance of containing "
        .. "Pirate Vines but also ^x00ff00Laser Branch Vines^! "
        .. "(challenging places to improve your Laser weapon).\n\n"
        .. "These number 2 vines also have a chance of containing a vine "
        .. "with a 3 on it."
    game_journal.add_txt(lang, "I2_LIBRARY_VINE_BUNDLES_part3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{20}Vine bundles;{30}Part 3")

    local str = "A vine with the number 3 on it has a chance of containing "
        .. "^x00ff00Toronto Vines^! (great places to find Toronto Cities).\n\n"
        .. "These number 3 vines also have a chance of containing a vine "
        .. "with a 4 on it."
    game_journal.add_txt(lang, "I2_LIBRARY_VINE_BUNDLES_part4", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{20}Vine bundles;{40}Part 4")

    local str = "A vine with the number 4 on it has a chance of containing "
        .. "a yellow vine. That contains ^x00ff00Scorpius Portals^!, "
        .. "among other things.\n\n"
        .. "Number 4 vines also have a chance of containing a "
        .. "^x00ff00Laboratory Vine Bundle^!. "
        .. "This looks like lots of Laboratory Vines next to each other "
        .. "together forming a super vine. "
        .. "However they are not exactly normal Laboratory Vines: "
        .. "they differ from the normal ones because you can find "
        .. "^x00ff00Blue Mushrooms^! on them."
    game_journal.add_txt(lang, "I2_LIBRARY_VINE_BUNDLES_part5", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{20}Vine bundles;{40}Part 4")

    local str = "Something to note in general is that I2 is probably one of the best places "
        .. "to upgrade your Railgun.\n\n"
        .. "Laboratory Vine Bundles are described elsewhere on this floor. "
        .. "They can sometimes be found in vines with a number 4 on them. "
        .. "With a quite small probability, growing on a Laboratory Vine "
        .. "in a Laboratory Vine Bundle you can find a ^x00ff00Blue Mushroom^!. "
        .. "See the picture."
    game_journal.add_txt(lang, "I2_LIBRARY_BLUE_MUSHROOM_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{40}Blue mushroom;{10}Part 1")

    local str = "Blue Mushrooms are challenging but are great places to "
        .. "improve your Railgun (the treasure has many Railgun upgrades). "
        .. "To get to the treasure, you have to shrink enough times and "
        .. "pass through the walls.  This takes some time. "
        .. "The walls of a Blue Mushroom are essentially a more "
        .. "challenging version of the Fanatic Lattice.\n\n"
        .. "The walls of a Blue Mushroom are also good places to find "
        .. "^x00ff00Rainbow Flowers^!."
    game_journal.add_txt(lang, "I2_LIBRARY_BLUE_MUSHROOM_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{40}Blue mushroom;{20}Part 2")

    local str = "You can also find Blue Mushrooms elsewhere in the universe. "
        .. "For example, in I3, you can find them growing in the ground beneath "
        .. "carrots alongside the more common Salmon Mushrooms."
    game_journal.add_txt(lang, "I2_LIBRARY_BLUE_MUSHROOM_part3", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{50}Flowers / trees;{40}Blue mushroom;{30}Part 3")

    local str = "As described elsewhere on this floor, hanging from the "
        .. "light blue structures in the Fanatic Lattice are "
        .. "^x00ff00Laboratory Vines^!. See the picture for what such "
        .. "a vine looks like.\n\n"
        .. "On the inside of these vines is a central shaft that contains "
        .. "1) Laboratory Monsters, 2) Scorpius Portals (for going back into I1), "
        .. "and 3) Danville towns."
    game_journal.add_txt(lang, "I2_LIBRARY_LABORATORY_VINE_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{30}Laboratory vines;{10}Part 1")

    local str = "Sticking out of the sides of these vines are green structures. "
        .. "If you shrink and explore their surface, you can find many interesting things "
        .. "(such as Minigun, Railgun, Nuke, and Dark Hole Damage upgrades). "
        .. "This area is referred to as the ^x00ff00Top of the Minigun Forest^!.\n\n"
        .. "Here you can find yellow cubes growing on vertical green poles. "
        .. "These yellow cubes have Minigun upgrades and ammo. "
        .. "Also in these yellow cubes are ^x00ff00Bubble Caves^!."
    game_journal.add_txt(lang, "I2_LIBRARY_LABORATORY_VINE_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{30}Laboratory vines;{10}Part 2")

    local str = "You can find ^x00ff00EMP Cities^! in the trunks of certain trees.\n\n"
        .. "For example, you can find them 1) in the trunks of normal Willow Trees, "
        .. "or 2) in the trees in the Minigun Ammo Forest, or "
        .. "3) in the trees growing on Weed Rings."
    game_journal.add_txt(lang, "I2_LIBRARY_EMP_CITY", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{40}EMP city")
    --NOT putting this in the city / town section.

    local str = "You can find ^x00ff00Weed Rings^! on the top of "
        .. "Fanatic Weeds (among other places).\n\n"
        .. "With a small probability, the Cannon Gym on top "
        .. "of a Fanatic Weed will be a Weed Rings structure instead."
    game_journal.add_txt(lang, "I2_LIBRARY_WEED_RINGS_part1", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{50}Weed rings;{10}Part 1")

    local str = "In the center island of Weed Rings is a "
        .. "^xff00ffScorpius Portal^!, which brings you back into I1."
    game_journal.add_txt(lang, "I2_LIBRARY_WEED_RINGS_part2", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{50}Weed rings;{20}Part 2")

    local str = "You can find ^x00ff00Fanatic Spires^! inside Fanatic Lattices.\n\n"
        .. "The inside has its own variant of the Fanatic Lattice.\n\n"
        .. "The inside is a nice place to casually collect Rocket upgrades. "
        .. "Also the inside contains Health Patches "
        .. "and Creeping Jeni Plants.\n\n"
        .. "The treasure room contains many Rocket upgrades as well as a "
        .. "^xffff00Golden Yellow Flower^!, which has the High Velocity Rocket "
        .. "weapon modifier."
    game_journal.add_txt(lang, "I2_LIBRARY_FANATIC_SPIRE", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{60}Fanatic spire")

    local str = "You can find ^x00ff00Creeping Jeni Plants^! inside Fanatic Spires.\n\n"
        .. "The inside is a nice place to casually collect Cannon upgrades.\n\n"
        .. "The treasure room contains many Cannon upgrades "
        .. "as well as the city of Toronto."
    game_journal.add_txt(lang, "I2_LIBRARY_CREEPING_JENI", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{70}Creeping jeni plant")

    local str = "You can find ^x00ff00Violets^! inside Creeping Jeni Plants "
        .. "and sometimes on the ground of the Minigun Ammo Forest.\n\n"
        .. "They always come in a pair.\n\n"
        .. "When you enter into a Violet Flower, "
        .. "you are teleported to the inside of 3 shells.\n\n"
        .. "The second shell contains Fanatic Spires.\n\n"
        .. "Violets are ok places to improve your EMP Freeze Time, "
        .. "but in general they have a mix of upgrades."
    game_journal.add_txt(lang, "I2_LIBRARY_VIOLETS", str)
    game_journal.add_path("@area;@area_lib;@area_lib_i2;{60}Other areas;{80}Violets")
end

function p.I2_LIBRARY_INOUT_1_montreal(chunk_id)
    --Ignoring chunk_id.
    local str = "^x00ff00Montreal^! looks like a checkered block from the distance.\n\n"
        .. "You can enter and exit this city via a maze.\n\n"
        .. "There is a toll door at the end of the maze that costs 200 gold. "
        .. "You can also go in and out for 150 gold, but you have to pay each time.\n\n"
        .. "This city contains several Infinity Flowers next to a waypoint, "
        .. "which appeals to some people."
    if( ga_get_b("worldgen.state.one_way") ) then
        str = str .. "\n\nThe only way in or out involves passing by a "
            .."^xffffffWhite Box Device^!."
    end
    return str
end

function p.I2_LIBRARY_INOUT_1_toronto(chunk_id)
    local str = "^x00ff00Toronto^! looks like a checkered block from the distance. "
        .. "This city has a maze which contains a ^xff00ffRainbow Flower^! "
        .. "in one of its rooms. "
        .. "You can find Toronto Cities inside Mystic Vines.\n\n"
        .. "Here is another way to find Toronto Cities: "
        .. "in a Fanatic Island there are many vines. "
        .. "Go into a vine that says \"1\" on the side. "
        .. "Then go into a vine that says \"2\" on the side. Etc. "
        .. "Eventually you will find a \"Toronto Vine\" that has "
        .. "many Toronto Cities in its core."
    if( ga_get_b("worldgen.state.one_way") ) then
        str = str .. "\n\nThe only way in or out from the main waypoint "
            .. "involves passing by a ^xffffffWhite Box Device^!."
    end
    return str
end

function p.I2_LIBRARY_INOUT_1_danville(chunk_id)
    --Ignoring chunk_id.
    local str = "^x00ff00Danville^! looks like two checkered "
        .. "cubes from the distance, "
        .. "one on top of the other.\n\n"
        .. "Danville is similar to Montreal. "
    if( not game_genesis.enabled() ) then
        str = str .. "\n\nThere are two ways in and out of Danville: "
            .. "one uses a 200 gold toll door, "
            .. "whereas the other does not "
            .. "(but probably requires an ^xff0000EMP blast^!). "
    end
    return str
end

function p.I2_LIBRARY_INOUT_2_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "^x00ff00Some ways to enter I2^!: "
    if( not game_genesis.enabled() ) then str = str .. "(Without losing all ammo). " end
    str = str .. "\n\nWe will break these into two categories:\n\n"
        .. "Category 1: places outside of I2 that contain "
        .. "pieces of I2 you can enter.\n\n"
        .. "Category 2: places inside I2 that have a piece P of non-I2, "
        .. "where you can enter P and find a waypoint, "
        .. "so that later you can teleport back to P and then leave "
        .. "into the surrounding I2. "
    return str
end

function p.I2_LIBRARY_INOUT_2_part2(chunk_id)
    --Ignoring chunk_id.
    local str = "Category 1:\n\n"
    if( game_genesis.enabled() ) then
        str = str .. "1) from ^x00ff00I1^! (in Bristol)\n\n"
    else
        str = str .. "1) from ^x00ff00I1^! (in Bristol or an EMP Castle)\n\n"
    end
    str = str .. "2) I2 WIG Flowers. "
        .. "These can be found in many places, such as I1 and I3.\n\n"
    str = str .. "3) The Sagittarius Portal in I3. "
    return str
end

function p.I2_LIBRARY_INOUT_3_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "^x00ff00Some ways to exit I2^!. "
    if( not game_genesis.enabled() and
        ga_get_b("worldgen.state.one_way") )
    then
        str = str .. "(Without losing all ammo). "
    end
    str = str .. "\n\n"
        .. "1) this library (the waypoint)\n\n"
        .. "2) ^xff00ffthe Scorpius Portal to I1^!\n\n"
        .. "3) enter ^x00ff00I3^! (talked about nearby in this library)\n\n"
        .. "4) Danville\n\n"
        .. "5) Stoney Air (shrink into Stoney Air, "
        .. "then go into a Yellow Cube)."
    return str
end

function p.I2_LIBRARY_RAINBOW_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "Message from SN1987A:\n\n"
        .. "^x0000ffThe gems of Group #2 of the Infinity Flower are its "
        .. "^xff00ffRainbow Flowers^!^x0000ff. "
        .. "These show what you can do with a powerful force of creation: "
        .. "you can create all the colors of the rainbow.\n\n"
    if( game_genesis.enabled() ) then
        str = str .. "These flowers are special because they contain an item that "
            .. "makes you invulnerable for a small amount of time. "
            .. "This item \"stacks\" which means if you pick up "
            .. "multiple instances of it within a short period of time, "
            .. "the invulnerability times are added together. "
    else
        str = str .. "These flowers are special because they contain LOTS of ammo. "
            .. "They also contain damage and experience multiplies (which stack). "
    end
    return str
end

function p.I2_LIBRARY_SMALL_BLUE_FLOWER_part1(chunk_id)
    --Ignoring chunk_id.
    local str = "Message from KY Cygni:\n\n"
        .. "^x0000ffAnother plant native to I2 is the "
        .. "^x00ff00Small Blue Flower^!^x0000ff. "
        .. "I have just sent my crew in to colonize it.\n\n"
        .. "When you enter the flower, you are actually only "
        .. "entering the ^x00ff00Primary^x0000ff part of it. "
        .. "Once you reach the center there is treasure and an I2 WIG Flower "
        .. "(we planted it). "
    if( not game_genesis.enabled() ) then
        str = str .. "The treasure also includes a Nuke Radius upgrade. "
    end
    str = str .. "\n\nHowever there is also a chance (50%) that the center contains "
        .. "the ^x00ff00Secondary^x0000ff part of the flower. "
    return str
end

function p.I2_LIBRARY_SMALL_BLUE_FLOWER_part2(chunk_id)
    --Ignoring chunk_id.
    local str = "^x0000ffIf you enter the Secondary part and reach its center, "
        .. "you get more treasure and also a copy of the I2 Library "
        .. "(we constructed it). "
    if( not game_genesis.enabled() ) then
        str = str .. "The treasure also includes a Nuke Max Ammo upgrade. "
    end
    str = str .. "\n\nHowever there is also a chance (50%) that the center contains "
        .. "the ^x00ff00Tertiary^x0000ff part of the flower."
    return str
end

function p.I2_LIBRARY_SMALL_BLUE_FLOWER_part3(chunk_id)
    --Ignoring chunk_id.
    local str = "^x0000ffIf you enter the Tertiary part and reach its center, "
        .. "you get more treasure and also an I3 WIG Flower. "
        .. "The use of that WIG flower is a method some of us are using to enter I3. "
    if( not game_genesis.enabled() ) then
        str = str .. "The treasure also includes several EMP Radius upgrades. "
    end
    str = str .. "\n\nThe center of the Tertiary part also has a chance (50%) "
        .. "of containing the ^x00ff00Quaternary^!^x0000ff part of the Small Blue Flower."
    return str
end

function p.I2_LIBRARY_SMALL_BLUE_FLOWER_part4(chunk_id)
    --Ignoring chunk_id.
    local str = "^x0000ffIf you reach the end of the Quaternary part, "
        .. "that is the end of the road. "
    if( not game_genesis.enabled() ) then
        str = str .. "But you get tons of Rocket upgrades "
            .. "and also damage and XP multipliers."
    end
    return str
end

function p.trophy_room_locations()
    -- local str = "The trophy list room for the ^x00ff00Ying World^! is contained on the small "
    --     .. "green island that you find in one of the shell rooms when trying to "
    --     .. "exit a Ying World. For more of a description, go to the top room of "
    --     .. "a Ying Flower. ";
    -- game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_yw", str)

    local str = "Here is where to find a list of all ^x00ff00Ying World^! trophies: "
        .. "When you escape a Ying World by enlarging, you will find "
        .. "larger and larger \"shell\" rooms. "
        .. "At some point, you will find a shell room that contains a green "
        .. "island. On such an island, there is a room "
        .. "(that looks like a question mark) "
        .. "with a list of all Ying World trophies and where to find them. "
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_yw", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_yw;{10}Location room location")

    local str = "The trophy list room for the ^x00ff00Midway^! trophies is contained "
        .. "at the top of the Red Homing Rocket Caves "
        .. "at the top of some buildings in ^x00ff00Richmond^! cities."
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_mid", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_mid;{10}Location room location")

    local str = "The trophy list room for ^x00ff00I1^! (of the Infinity Flower) trophies "
        .. "is in the treasure area of ^x00ff00Willison Caves^!. "
        .. "You can read more about these caves in the center of Williston Cities."
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_i1", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i1;{10}Location room location")

    local str = "The trophy list room for ^x00ff00I2^! (of the Infinity Flower) trophies "
        .. "can be found in ^x00ff00Danville^! Towns."
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_i2", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i2;{10}Location room location")

    local str = "The trophy list room for ^x00ff00I3^! (of the Infinity Flower) trophies "
        .. "can be found in ^x00ff00Colchester^! Towns."
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_i3", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_i3;{10}Location room location")

    local str = "The trophy list room for ^x00ff00Burlington^! "
        .. "can be found at the top of the central tower of each Burlington City."
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_bur", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_bur;{10}Location room location")

    local str = "The trophy list room for ^x00ff00Space^! trophies can be found "
        .. "in the ^x00ff00Space Library^!. "
        .. "This library is a Moon, and can be found around certain planets "
        .. "(and those planets are around suns, and those suns are in galaxies)."
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_space", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_space;{10}Location room location")

    local str = "^xff0000There is no trophy room for ^x00ff00The Bulk^! ^xff0000trophies. "
        .. "This will change in a later version of the game.^!\n\n"
        .. "You can enter The Bulk in the Top City of Mylantis (in the underground)."
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_bulk", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_bulk;{10}Location room location")

    local str = "The trophy list room for ^x00ff00Mylantis^! trophies can be found "
        .. "in the Top City of Mylantis (in the underground)."
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_mylantis", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_my;{10}Location room location")

    local str = "^xff0000There is no trophy room for ^x00ff00Hell^! ^xff0000trophies. "
        .. "This will change in a later version of the game.^!"
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_hell", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_hell;{10}Location room location")

    local str = "The trophy list room for ^x00ff00No Waypoint^! trophies can be found "
        .. "in ^x00ff00Jericho^! Towns. "
        .. "These towns can be found in some Mossy Islands (inside Mossy Air)."
    game_journal.add_txt(lang, "I2_LIBRARY_TROPHY_ROOM_nwp", str)
    game_journal.add_path("@basic;@basic_trophy;@basic_trophy_nwp;{10}Location room location;{10}Version 1")
end

-------------------------------------------------------------------------------
