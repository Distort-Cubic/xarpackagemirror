--File: game_journal_english_i1_bristol.lua

local lang = "english"

function p.main()
    p.recordable()
end

function p.recordable()
    local str = "This is a ^x00ff00Bristol^!! \n\n"
        .. "This is part of the ^x00ff00Main Branch^!. "
        .. "To continue down the Main Branch, go to one of the corners of "
        .. "this room where it says \"I2\". "
        .. "That will bring you to Group 2 of the Infinity Flower (I2).\n\n"
        .. "Notice also that there is a Pink Sphere in this large room."
    game_journal.add_txt(lang, "BRISTOL_PENTHOUSE_main_branch", str)
    game_journal.add_path("@area;@area_i1;@area_i1_mb;{30}Bristol to I2")

    local str = "^x00ff00Message from your friend K:\n\n"
        .. "Let me catch you up since we last met in person. "
        .. "This may help in your search.\n\n"
        .. "I started what I thought would be my dream job at the "
        .. "^xff00ffInner Mechanization Agency^x00ff00. "
        .. "I never told you exactly what I did there.\n\n"
        .. "I was part of a team to "
        .. "^xff00ffsolve very large scale mazes^x00ff00. "
        .. "Sometimes I would get a personal assignment. Other times "
        .. "we would work in teams (and sometimes the teams were quite large). "
        .. "We would be given schematics and blueprint descriptions "
        .. "for the mazes."
    game_journal.add_txt(lang, "BRISTOL_PENTHOUSE_k_1", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_start;{10}Part 1")

    local str = "^x00ff00We would be required to either solve the maze, "
        .. "going from start to finish, "
        .. "or prove that there was a solution. "
        .. "The finish point of a maze was called a ^xff00ffcore^x00ff00 "
        .. "for some reason. When we were done, "
        .. "we would submit our report to the "
        .. "maze solution verification team. "
        .. "We would not hear anything from them unless "
        .. "there was a problem with our solution. "
        .. "Everything there was on a need-to-know basis.\n\n"
        .. "The problem solving was a blast, and I couldn't believe I was "
        .. "getting paid to do this stuff. "
        .. "However more and more I become suspicious of the motivation "
        .. "of the agency. "
        .. "Where was the agency getting these mazes from? "
        .. "Why did the agency care about solving them? "
    game_journal.add_txt(lang, "BRISTOL_PENTHOUSE_k_2", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_start;{20}Part 2")

    local str = "^x00ff00In my spare time I continued the search "
        .. "(that I began in college) for the inner world. "
        .. "I still thought our Xar theorem was a clue.\n\n"
        .. "The cryptic nature of my job was a second clue.\n\n"
        .. "Solving mazes for hours a day does something to your mind, "
        .. "and it soon occurred to me that the Inner Mechanization Agency "
        .. "building itself was a maze. "
        .. "The building was very blocklike, with each blocklike region "
        .. "of the building was labeled with a triple of numbers X-Y-Z. "
        .. "The building was 16 block regions wide, 16 block regions long, "
        .. "but only 9 block regions tall. "
        .. "It bothered me that the dimensions "
        .. "were not an even 16x16x16.\n\n"
        .. "I suspected that there were 7 extra hidden floors below the floors "
        .. "I knew about. "
        .. "Let me mention that the entire building was underground, "
        .. "so I could not go outside and look at it."
    game_journal.add_txt(lang, "BRISTOL_PENTHOUSE_k_3", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_start;{30}Part 3")

    local str = "^x00ff00The search for the inner world in my spare time "
        .. "was combined with my solving mazes at work "
        .. "which was combined with my search for the hidden floors.\n\n"
        .. "During my lunch break I would walk around the building "
        .. "and memorize the placement of "
        .. "halls and rooms which I would write down in a notebook "
        .. "as soon as I got back to my office. "
        .. "I made the notebook look like another one of my "
        .. "maze assignments.\n\n"
        .. "This all cannot just be in my mind, "
        .. "because how do you explain "
        .. "why I had such a strange job?"
    game_journal.add_txt(lang, "BRISTOL_PENTHOUSE_k_4", str)
    game_journal.add_path("@yang;@yang_ima;@yang_ima_start;{40}Part 4")

    local str = "Message from Messier 51a:\n\n"
        .. "^x0000ffWhen they asked me to decorate the "
        .. "Group #1 suburban sprawl of the Infinity Flower I was like, "
        .. "OMG, you have got to be kidding me. "
        .. "The aesthetics are just awful! \n\n"
        .. "I put a few Apple Trees on the tops of the buildings "
        .. "in the Williston Cities; "
        .. "anything to break up that sea of BORING concrete.\n\n"
        .. "The monks of the Stoney Sanctuaries have cultivated "
        .. "a delightful fruit called a ^x00ff00Blackberry^x0000ff. "
        .. "I put such a fruit in the EMP Castles here. "
        .. "(Not in a castle's central tower, "
        .. "but in the surrounding courtyard inside the walls). "
        .. "That should spice things up here in Group #1!"
    game_journal.add_txt(lang, "BRISTOL_BLACKBERRY_HINT", str)
    game_journal.add_path("@area;@area_i1;@area_i1_bristol;{10}Messier 51a message;{10}Part 1")
    game_journal.add_path("@area;@area_mid;@area_mid_stoney;@area_mid_stoney_san;{40}The monks have cultivated blackberries")

    local str = "^x0000ffOh, and I planted lots of ^x00ff00Pink Trees^x0000ff "
        .. "in the forests surrounding Bristol Towns.  "
        .. "They really even out the landscape I think.\n\n"
        .. "Sometimes I like to start at a Pink Sphere and then "
        .. "get lost in the woods surrounding Bristol; "
        .. "I just shrink and shrink and shrink for hours. "
        .. "Then when I get tired of that, I just stumble on over "
        .. "to a Pink Tree and then \"POP!\", back to the Pink Sphere!\n\n"
        .. "And what harm did I do by planting these Pink Trees? "
        .. "An Infinity flower has a Pink Sphere at the top, "
        .. "so these Pink Trees surrounding Bristol cannot go beyond "
        .. "those spheres. (And the guts of an Infinity Flower should "
        .. "not appear elsewhere in the Xar universe, outside of a "
        .. "containing Infinity Flower).\n\n"
        .. "Right?"
    game_journal.add_txt(lang, "BRISTOL_PINK_HINT", str)
    game_journal.add_path("@area;@area_i1;@area_i1_bristol;{10}Messier 51a message;{20}Part 2")

    game_journal.add_txt_cb(lang, "BRISTOL_WIG_HINT", p.BRISTOL_WIG_HINT)
    game_journal.add_path("@area;@area_i1;@area_i1_bristol;{10}Messier 51a message;{30}Part 3")
    game_journal.add_path("@area;@area_i1;@area_i1_wil;@area_i1_wil_field;@area_i1_wil_field_zube;{10}These have pink rings next to a waypoint")
end

function p.BRISTOL_WIG_HINT(chunk_id)
    --Ignoring chunk_id.
    local str = "^x0000ffOh boy I just love Pink Trees.  "
        .. "I shrink and shrink and shrink, and then "
        .. "when I get bored I go to a Pink Tree to find a "
        .. "Pink Ring Device to POP back to where I started. \n\n"
        .. "Although sometimes I like a little bigger POP! "
        .. "There are these places called "
        .. "^x00ff00Zubeneschamali Castles^x0000ff, "
        .. "which occur in the same places where you "
        .. "find EMP Castles, which have Pink Ring Devices in their center. "
    if( not game_genesis.enabled() ) then
        str = str .. "You have to get past some big tough monsters, "
            .. "but that's part of the fun! "
    end
    str = str .. "\n\nAnd right next to the Pink Ring Device is a Waypoint! "
        .. "That's gotta come in handy!!! "
    return str
end

-------------------------------------------------------------------------------
