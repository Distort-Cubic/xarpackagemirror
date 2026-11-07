--File: env_rect_base_death_cheesy.lua

function p.__on_touch()
    p.payload()
end

--What makes this cheesy is there
--is no __on_line_seg_hits function.

function p.payload()
    ga_kill_player()
end
