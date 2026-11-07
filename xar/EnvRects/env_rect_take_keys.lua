function p.__on_touch()
    p.payload()
end

--The end of an era.
function p.__on_line_seg_hits()
    p.payload()
end

function p.payload()
    game_remove_ammo.remove_keys()
end
