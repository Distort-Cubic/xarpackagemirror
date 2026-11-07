--File: env_rect_base_death.lua

function p.__on_touch()
    p.payload()
end

--The end of an era.
function p.__on_line_seg_hits()
    p.payload()
end

function p.payload()
    ga_kill_player()
end
