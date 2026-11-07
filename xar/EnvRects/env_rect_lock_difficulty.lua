function p.__on_touch()
    p.payload()
end

--The end of an era.
function p.__on_line_seg_hits()
    p.payload()
end

function p.payload()
    local locked_in = ga_get_b("xar.difficulty.locked_in")
    if( locked_in ) then return end
    --
    ga_set_b("xar.difficulty.locked_in", true)
    game_msg.add("From now on, the easiest used difficulty...")
    game_msg.add("will be recorded (press F5) ")
    game_sound.play_sound("harp")
end
