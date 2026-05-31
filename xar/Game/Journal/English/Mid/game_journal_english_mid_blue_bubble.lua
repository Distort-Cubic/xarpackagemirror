--File: game_journal_english_mid_blue_bubble.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Remember we would work late at night at the Fractal Labs "
        .. "in college? There was a service elevator leading to the basement "
        .. "that required a key that the facility staff had.\n\n"
        .. "One night while we were ready to leave the lab, "
        .. "we passed by the facility staff's office. "
        .. "We saw the key to the service elevator on a desk.\n\n"
        .. "We looked at each other thinking the same thing. "
        .. "We rushed in and grabbed the key, ran to the elevator, "
        .. "inserted the key and took it to the lowest basement level."
    game_journal.add_txt(lang, "BLUE_BUBBLE_FRIEND_part1", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_basement;{10}Part 1")

    local str = "^x00ff00We emerged in a room with lots of machines and strange devices. "
        .. "I danced around in joy. We made jokes about what the machines did. "
        .. "You dared me to turn one of the valves.\n\n"
        .. "All of a sudden the elevator was recalled back up. "
        .. "Soon the elevator came back down and we panicked. "
        .. "We threw the keys on the ground and ran to an emergency exit. "
        .. "This caused the alarm to go off and we got the heck out of there. "
        .. "We caught our breath, laughed, and ate some cheese pizza "
        .. "at our favorite shop."
    game_journal.add_txt(lang, "BLUE_BUBBLE_FRIEND_part2", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_basement;{20}Part 2")
end

-------------------------------------------------------------------------------
