--File: game_ment_render.lua

function p.monster(inst_id, radius)
    --Eventually, have this p.monster function handle "death animations".
    --The idea is that normally monsters have their var __disable_custom_render
    --set to true, but when we start a death animation we set it to false.
    --Then, in this function we actually render a death animation.
    ga_render_ment_typical(inst_id)
end
