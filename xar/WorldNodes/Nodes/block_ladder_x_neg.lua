--See ladder_x_pos for documentation.

function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__get_inv_tex_x_neg() return "block_side_ladder" end

function p.__main()
    set_default_block("e")

    create_rect("r_black", 0,0,4,  3,15,4)
    create_rect("r_black", 0,0,11, 3,15,11)

    create_rect("r_white", 0,4,0,  0,4,15)
    create_rect("ladder_x_neg", 1,4,0,  1,4,15)
    --
    create_rect("r_white", 0,11,0, 0,11,15)
    create_rect("ladder_x_neg", 1,11,0, 1,11,15)
end

function p.__on_close(level, bp)
    --Body dimensions.
    radius = ga_get_sys_f("game.player.move.ground.radius")
    bot_to_eye = ga_get_sys_f("game.player.move.ground.bot_to_eye")
    eye_to_top = ga_get_sys_f("game.player.move.ground.eye_to_top")

    eye = ga_get_sys_v("game.player.camera.offset")

    line = {}
    line.min = {x = eye.x-radius, y = eye.y, z = eye.z-bot_to_eye}
    line.max = {x = eye.x-radius, y = eye.y, z = eye.z+eye_to_top}

    thick = 0.1
    rect = {}
    rect.min = {x = (bp.x),       y = bp.y, z = bp.z}
    rect.max = {x = (bp.x+thick), y = bp.y+1, z = bp.z+1}

    if  line.max.x < rect.min.x or
        line.max.y < rect.min.y or
        line.max.z < rect.min.z or
        rect.max.x < line.min.x or
        rect.max.y < line.min.y or
        rect.max.z < line.min.z
    then
        --Not touching the ladder
        return
    end

    --Setting movement state to be on a ladder.
    ga_set_s("xar.inf2.movement.mod", "ladder_x_neg")
end

function p.__on_adj_block_changed(
    level, bp, side, old_bt, new_bt)

    if ga_bt_get_physically_solid(new_bt) then return end
    if side ~= 1 then return end

    ga_block_change_rl(level, bp, "block_e", 10.0)
end
