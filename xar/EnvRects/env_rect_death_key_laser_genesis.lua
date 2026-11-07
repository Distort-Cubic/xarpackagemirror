function p.__on_touch()
    p.payload()
end

--The end of an era.
function p.__on_line_seg_hits()
    p.payload()
end

function p.payload()
    if( ga_get_f("xar.key_time.laser_genesis") > 0 ) then
        --The player has the key.
        return
    end
    --The player does not have the key.
    ga_kill_player()
end
