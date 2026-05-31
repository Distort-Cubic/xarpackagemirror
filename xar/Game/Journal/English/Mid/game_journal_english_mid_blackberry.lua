--File: game_journal_english_mid_blackberry.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from TON 618:\n\n"
        .. "^x0000ffI hacked into the code of a Blackberry! "
        .. "Note that you are in a Blackberry now.\n\n"
        .. "I made a change to make Blackberries incredibly useful. "
        .. "The change has nothing to do with their treasure.\n\n"
        .. "Even I might get in trouble if I divulge the secret here. "
        .. "So, I have written down the secret fact about Blackberries "
        .. "and stored it in Red Maze Flowers (which can be found in I3)."
    game_journal.add_txt(lang, "BLACKBERRY_MEDIUM_SECRET_HINT", str)
    game_journal.add_path("@quest;@quest_mid;@quest_mid_blackberry;{10}Blackberries have a secret purpose")
    game_journal.add_path("@area;@area_mid;@area_mid_blackberry;{10}Blackberries have a secret purpose")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "What are these ^xff00ffInner Cores^! ^x00ff00that you may have "
        .. "been hearing about? "
        .. "Let me share with you what I have learned. "
        .. "Well their key feature is the following: "
        .. "for every universe U, there always seems to be "
        .. "an inner core C inside U such that "
        .. "C is necessary and sufficient for the existence of U. "
        .. "That is, C is necessary for the existence of U simply "
        .. "because we find C inside U. "
        .. "On the other hand C is sufficient for the existence of U "
        .. "because given just C by itself, using Re-Creation technology "
        .. "we can recreate U using C.\n\n"
        .. "Inner cores can be moved from one universe to another, "
        .. "but the key feature described above must remain true."
    game_journal.add_txt(lang, "BLACKBERRY_MEDIUM_CORE_6_part1", str)
    game_journal.add_path("@lore;@lore_ic;{10}Moving inner cores between universes;{10}Part 1")

    local str = "^x00ff00"
        .. "Now we do not live in a universe as much as we live "
        .. "in a multiverse. And I am not making a claim that there is "
        .. "an ultimate inner core for the multiverse.\n\n"
        .. "However we can reasonably break the multiverse into "
        .. "smaller universes.  Some of these universes are disjoint "
        .. "from one another, while some overlap. "
        .. "For example, you can imagine a universe U1 "
        .. "which is contained in a larger universe U2. "
        .. "Then we can expect U1 to contain an Inner Core C1, "
        .. "and U2 to contain an Inner Core C2. "
        .. "However if U2 has strictly greater "
        .. "creationary strength than U1, "
        .. "then it should follow that C2 is NOT in U1."
    game_journal.add_txt(lang, "BLACKBERRY_MEDIUM_CORE_6_part2", str)
    game_journal.add_path("@lore;@lore_ic;{10}Moving inner cores between universes;{20}Part 2")

    local str = "^x00ff00"
        .. "Here is another example. "
        .. "Let's say we have two universes U3 and U4 "
        .. "that are disjoint from one another. "
        .. "U3 contains one of its Inner Cores C3, and "
        .. "U4 contains one of its Inner Cores C4. "
        .. "Suppose we try to move C3 into U4. "
        .. "This may increase the creationary strength "
        .. "of U4, but not in an impossible way, "
        .. "because if needed C3 and C4 will fuse in U4 "
        .. "to produce an Inner Core C3+4 which is "
        .. "necessary and sufficient for the existence "
        .. "of the (modified) U4.\n\n"
        .. "On the other hand, moving C3 out of U3 "
        .. "may decrease the creationary strength of "
        .. "U3 (if there is not a duplicate core in U3). "
        .. "If there is a decrease in creationary strength "
        .. "of U3, this would result in a collapse of "
        .. "the distinguishing features of U3. "
        .. "Pictures looking more blurry, "
        .. "mazes becoming less complicated, "
        .. "the global fractal structure becoming "
        .. "more simplistic, etc."
    game_journal.add_txt(lang, "BLACKBERRY_MEDIUM_CORE_6_part3", str)
    game_journal.add_path("@lore;@lore_ic;{10}Moving inner cores between universes;{30}Part 3")
end

-------------------------------------------------------------------------------
