--File: game_journal_english_bur_city.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "Message from Vega to Altair:\n\n"
        .. "^x0000ffSorry I cannot be here with you. "
        .. "Here is something to remind you of my world: "
        .. "a ^x00ff00Galaxy Flower^!^x0000ff.\n\n"
        .. "Work in the Mylantis underground labs is as chaotic as ever. "
        .. "We are trying to harness the power of Re-Creation "
        .. "to make our city a paradise. "
        .. "Our efforts require unfathomably many inner cores, "
        .. "and we have you and your team to thank for providing "
        .. "our source for them."
    game_journal.add_txt(lang, "BURLINGTON_CITY_BUILDING_ROOM_vega_to_altair", str)
    game_journal.add_path("@lore;@lore_ib;@lore_ib_mylantis;{10}Using re-creation to make our city a paradise")

    local str = "Message from Rigel:\n\n"
        .. "^x0000ffThere is something locked deep inside this city.\n\n"
        .. "To get access to it, you must \"enter the combination\". "
        .. "There is one place to \"enter a 1\", "
        .. "another place to \"enter a 2\", and a third place to "
        .. "\"enter a 3\". You enter a number by shrinking in that "
        .. "location as indicated there.\n\n"
        .. "You can find these three places in and around the buildings "
        .. "of this city.\n\n"
        .. "The combination is hid elsewhere in the universe, near Mylantis."
    game_journal.add_txt(lang, "BURLINGTON_CITY_BUILDING_ROOM_rigel", str)
    game_journal.add_path("@quest;@quest_bur;@quest_bur_combo;{30}Where to \"enter the combination\"")

    local str = "Many flowers grow in ^x00ff00Tegan's Garden^!. "
        .. "You can find it in the corner of the Burlington City: "
        .. "it is on top of a green pyramid, which is on top of a tower."
    game_journal.add_txt(lang, "BURLINGTON_CITY_BUILDING_ROOM_tegan_garden", str)
    game_journal.add_path("@area;@area_bur;@area_bur_tegen;{10}Where to find")

    local str = "Message from TON 618:\n\n"
        .. "^x0000ffI hacked into the code for a "
        .. "^x00ff00Red Maze Flower^!^x0000ff. "
        .. "These grow in I3, Group #3 of the Infinity Flower. "
        .. "I added a secret message into the treasure room there! "
        .. "I won't tell you what it says now, you just have to go there "
        .. "and read it yourself!  Hahaha!\n\n"
        .. "If you haven't found a Red Maze Flower already, "
        .. "you can probably easily find one in "
        .. "^x00ff00Tegan's Garden^!^x0000ff."
    game_journal.add_txt(lang, "BURLINGTON_CITY_BUILDING_ROOM_ton618", str)
    game_journal.add_path("@area;@area_bur;@area_bur_tegen;{20}Note: red maze flowers grow here")
    game_journal.add_path("@quest;@quest_mid;@quest_mid_blackberry;{20}Red maze flowers are in tegan's garden")

    local str = "There is a place in this city for elite people: "
        .. "^x00ff00Club Green Apple^!. "
        .. "Only the creme dela creme need apply. "
        .. "It takes a ^xffff00Yellow Key^! to get in.\n\n"
        .. "You can find the club significantly underneath Tegan's Garden."
    game_journal.add_txt(lang, "BURLINGTON_CITY_BUILDING_ROOM_apple_club", str)
    game_journal.add_path("@area;@area_bur;@area_bur_apple;{10}Overview")

    local str = "Message from Rigel:\n\n"
        .. "^x0000ffLet me tell you about the "
        .. "^xff00ffBurlington City Combination Lock^!. "
        .. "^x0000ffWe knew something was hidden deep inside Burlington. "
        .. "We tried many combinations over the years. "
        .. "Finally we cracked the code. "
        .. "We hid the combination in a place we knew how to get to, "
        .. "but which we knew others had trouble going.\n\n"
        .. "We hid the combination in the ^x00ff00Grand Lock Boxes^! "
        .. "^x0000ffin Outer Space. "
        .. "All of us who knew how to get into Grand Lock Boxes swore "
        .. "an oath to never tell anyone else how to get into them. "
        .. "A Grand Lock Box looks like a yellow block with an X, "
        .. "the same size as a High Gold Asteroid. "
        .. "Often there is a Lock Box directly above an asteroid. "
        .. "You can find these by enlarging into Outer Space Level -1 "
        .. "and then flying for a while."
    game_journal.add_txt(lang, "BURLINGTON_CITY_BUILDING_ROOM_GATO_BLUE_AMMO", str)
    game_journal.add_path("@quest;@quest_bur;@quest_bur_combo;{10}Where the combination is hidden")
    game_journal.add_path("@area;@area_space;@area_space_lev_neg1;{10}Burlington city combination")

    local str = "Message from Rigel:\n\n"
        .. "^x0000ffTo enter the combination into the "
        .. "^xff00ffBurlington City Combination Lock^!^x0000ff, "
        .. "you do the following. "
        .. "Let's say the combination is 12321. "
        .. "You go to the place in the city to \"enter the 1\" "
        .. "and you shrink there.  "
        .. "You then go to the place to \"enter the 2\" "
        .. "and then shrink.  You then enter the 3.  "
        .. "Then the 2.  And then the 1.\n\n"
        .. "The places to enter the 1 and 2 are fairly obvious. "
        .. "Number 3 is a little tricky to find so let me tell you. "
        .. "Under the bridges with buildings on top of them, there "
        .. "are actually small buildings hanging below. "
        .. "So shrink and fly underneath such a bridge. "
        .. "Go to one of the purple rooms in a hanging building."
    game_journal.add_txt(lang, "BURLINGTON_CITY_BUILDING_ROOM_GATO_GREEN_AMMO", str)
    game_journal.add_path("@quest;@quest_bur;@quest_bur_combo;{40}Where to \"enter the number 3\"")
end
