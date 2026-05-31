--File: game_journal_english_hell_top.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is the surface of ^xff0000Hell^!.\n\n"
        .. "^xff0000Hell Flowers^! grow in the shafts below the surface.\n\n"
        .. "Inside Hell Flowers are ^xff0000Inner Cores^! which guard "
        .. "^xff00ffKeys to the Universe^!."
    game_journal.add_txt(lang, "HELL", str)
    game_journal.add_path("@area;@area_hell;@area_hell_surface;{10}Overview")

    ---------------------------------------------

    local str = "Message from Sagittarius A*:\n\n"
        .. "^x0000ffThe only way to reach this point is with "
        .. "a Key to the Universe. "
        .. "Now that you have the security clearance, "
        .. "let me tell you some of the big picture:\n\n"
        .. "Yes traditional Inner Botany Theory establishes that "
        .. "an Inner Core is NECESSARY and SUFFICIENT for the existence "
        .. "of MOST of the fractal block world. "
        .. "The parts where an Inner Core may not be "
        .. "(or is known not to be) sufficient "
        .. "for existence are barricaded and these barriers "
        .. "require Keys to the Universe "
        .. "to go through.\n\n"
        .. "Strictly speaking, Inner Botany Theory mainly deals "
        .. "with the \"NECESSARY\" direction. "
        .. "Scientists in this field are \"diggers\". "
        .. "We put these scientists in a universe and they "
        .. "keep digging until they find the universe's core. "
        .. "The phenomenon that they always find a core is what "
        .. "generates our belief that an Inner Core is necessary "
        .. "for a (traditional) universe to exist."
    game_journal.add_txt(lang, "HELL_GATE_SUFFICIENT_1_part1", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_post_credits;{10}Part 1")

    local str = "^x0000ffAnd finding any Inner Core "
        .. "in a universe is not enough: "
        .. "we want to find one whose creationary strength "
        .. "matches that of the observed creation in that universe. "
        .. "Once we have that we can reboot the universe at will "
        .. "preserving rudimentary world data. "
        .. "Or we can do other weird stuff, "
        .. "like shut down the universe and then "
        .. "boot up another universe of "
        .. "equal creationary strength with "
        .. "the same rudimentary world data."
    game_journal.add_txt(lang, "HELL_GATE_SUFFICIENT_1_part2", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_post_credits;{20}Part 2")

    local str = "^x0000ffCreating a universe from an Inner Core is the focus of "
        .. "Re-Creation Theory. "
        .. "Most of the Re-Creation scientists work underground in the "
        .. "Mylantis Top City. You don't hear about Re-Creation theory as much "
        .. "because almost all work in the subject is classified and requires a high "
        .. "security clearance.  This is partially because the ethics surrounding the subject "
        .. "can be questionable. "
        .. "It is also because we want to keep great power out of the wrong hands."
    game_journal.add_txt(lang, "HELL_GATE_SUFFICIENT_1_part3", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_post_credits;{30}Part 3")

    local str = "^x0000ffIn the old fashioned model we literally "
        .. "take an Inner Botanist and put them in a strange target universe "
        .. "and we wait for them to find an appropriate Inner Core. "
        .. "In a more nuanced setting, we assume that a given universe exists. "
        .. "We then determine if we WOULD find an Inner Core there "
        .. "IF that universe did exist. "
        .. "So then the existence of the Inner Core is certified under "
        .. "the assumption of the existence of the target universe.\n\n"
        .. "The main thing we mine for in HELL are these certificates. "
        .. "We call these ^x00ff00Inner Core Consistency Certificates (ICCCs)^!^x0000ff. "
        .. "We can generate these certificates the old fashioned way "
        .. "by putting Inner Botanists in universes. "
        .. "Or more cleverly, we can insert "
        .. "virtual inner botanists "
        .. "who are certified not to have consciousness (certified dummy diggers). "
        .. "Well, they may have consciousness, but their consciousness is certified not "
        .. "to go beyond the level that which we can safely reboot."
    game_journal.add_txt(lang, "HELL_GATE_SUFFICIENT_1_part4", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_post_credits;{40}Part 4")

    local str = "^x0000ffBut there is the obvious question: what is the point of "
        .. "amassing all these Inner Cores, "
        .. "or more precisely, all these Inner Core Consistency Certificates (ICCCs)?\n\n"
        .. "First, we are obligated to provide the Mylantis Top City with "
        .. "a certain fraction of our ICCCs. "
        .. "Using Re-Creation, they can create anything from faster Railguns to "
        .. "better tasting coffee.  Even I don't know exactly what they are capable of, "
        .. "as some Re-Creation technology is very secret."
    game_journal.add_txt(lang, "HELL_GATE_SUFFICIENT_2_part1", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_post_credits;{50}Part 5")

    local str = "^x0000ffThe second main use of the ICCCs is we want to establish the "
        .. "consistency of the deeper worlds. "
        .. "These are worlds that appear right now to only exist in our minds.\n\n"
        .. "And related to this, but perhaps another way of saying the same thing, "
        .. "we want to establish the consistency of the "
        .. "deeper parts of our minds."
    game_journal.add_txt(lang, "HELL_GATE_SUFFICIENT_2_part2", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_post_credits;{60}Part 6")

    local str = "^x0000ffThe third main use of these ICCCs is for the universe to "
        .. "boot up its own ^x00ff00Omega Core^!^x0000ff. "
        .. "On the one hand it looks like there are many "
        .. "different minds that exist here, all with their own lives, hopes, and ideas.\n\n"
        .. "For example I like the movie Pacific Rim, "
        .. "but Sirius B doesn't like any movie because he sucks.\n\n"
        .. "But this individuality is just an illusion caused by disagreement. "
        .. "All of us together share a core in which THERE IS NO disagreement. "
        .. "If you take a step back, you can see this core booting itself up. "
        .. "We call this process \"^x00ff00core booting^!^x0000ff\". "
        .. "The Omega Core is our name for the result of "
        .. "a conjectured stage of this booting process." 
    game_journal.add_txt(lang, "HELL_GATE_SUFFICIENT_2_part3", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_post_credits;{70}Part 7")

    local str = "^x0000ffThe essential idea behind the booting of the Omega Core "
        .. "is the following incredible phenomenon: "
        .. "no two Inner Cores (of different universes) can disagree with "
        .. "one another.  One can say more about one thing than the other, "
        .. "but when they talk about the same thing, they agree. "
        .. "So by capturing the Inner Cores of universes throughout the multiverse, "
        .. "we can patch these cores together to form a mosaic. "
        .. "That mosaic is essentially the Omega Core."
    game_journal.add_txt(lang, "HELL_GATE_SUFFICIENT_2_part4", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_post_credits;{80}Part 8")

    local str = "^x00ff00Message from your friend K,\n\n"
        .. "Today was my first day back at work "
        .. "since you released me from the Fractal Block World of Xar. "
        .. "On my desk there was a box, and when I opened it "
        .. "I found the following startling note."
    game_journal.add_txt(lang, "HELL_GATE_WELCOME_BACK", str)
    game_journal.add_path("@yang;@yang_back;{10}The box on my desk")
end

-------------------------------------------------------------------------------
