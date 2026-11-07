function p.__on_touch()
    p.payload()
end

--What makes this cheesy is there
--is no __on_line_seg_hits function.

function p.payload()
    game_remove_ammo.remove_ammo()
end
