--File: game_journal_english_i2_toronto_maze.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "You are in the map room of this maze! "
        .. "On the floor there is a smaller copy of this exact maze, "
        .. "which you can look at to route a path to wherever you want to go. "
        .. "If you fly close to it, you can see all the rooms together with text boxes explaining them!\n\n"
        .. "There might be very slight differences between the model and the real thing, "
        .. "but those are only artifacts that the game programmer "
        .. "did not feel like fixing because it was too tedious."
    game_journal.add_txt(lang, "TORONTO_MAZE_MAP_ROOM_TREASURE_0_model", str)
    game_journal.add_path("@area;@area_i2;@area_i2_city;@area_i2_city_toronto;{30}Maze map room")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Do you remember when we went to the history museum? "
        .. "I thought the class we were taking was boring, but we had fun "
        .. "at that museum. "
        .. "I kept staring at the diorama of the big battle. "
        .. "I wanted to shrink down and enter the model. "
        .. "Now that I have discovered the Xar world, I can do just that "
        .. "with my mind. "
        .. "What a ^xffff00golden^x00ff00 idea!"
    game_journal.add_txt(lang, "TORONTO_MAZE_MAP_ROOM_TREASURE_0_k", str)
    game_journal.add_path("@yang;@yang_college;@yang_college_random;@yang_college_random_museum")

    local str = "^xff0000Did you get to this place by cheating!?!?!?^!\n\n"
        .. "If you did, then you already know how to enable cheatcodes.\n\n"
        .. "^xff00ffIf you did not cheat, well heck let me tell you how to enable cheatcodes "
        .. "just in case you do not already know:\n\n"
        .. "you just open the console and enter \"cheat hodisclosetov\"."
    game_journal.add_txt(lang, "TORONTO_MAZE_MAP_ROOM_TREASURE_1_part1", str)
    game_journal.add_path("@area;@area_i2;@area_i2_city;@area_i2_city_toronto;{40}Maze map room secret")
end

-------------------------------------------------------------------------------
