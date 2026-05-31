--See ladder_x_pos for documentation.

function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__get_inv_tex_y_neg() return "block_side_ladder" end

function p.__main()
    set_default_block("e")

    create_rect("r_black", 0,0,4,  15,3,4)
    create_rect("r_black", 0,0,11, 15,3,11)

    create_rect("r_white", 4,0,0,  4,0,15)
    create_rect("ladder_y_neg", 4,1,0,  4,1,15)
    --
    create_rect("r_white", 11,0,0, 11,0,15)
    create_rect("ladder_y_neg", 11,1,0, 11,1,15)
end

function p.__on_close(level, bp)
    --Body dimensions.
    radius = ga_get_sys_f("game.player.move.ground.radius")
    bot_to_eye = ga_get_sys_f("game.player.move.ground.bot_to_eye")
    eye_to_top = ga_get_sys_f("game.player.move.ground.eye_to_top")

    eye = ga_get_sys_v("game.player.camera.offset")

    line = {}
    line.min = {x = eye.x, y = eye.y-radius, z = eye.z-bot_to_eye}
    line.max = {x = eye.x, y = eye.y-radius, z = eye.z+eye_to_top}

    thick = 0.1
    rect = {}
    rect.min = {x = bp.x,   y = (bp.y),       z = bp.z}
    rect.max = {x = bp.x+1, y = (bp.y+thick), z = bp.z+1}

    if  line.max.x < rect.min.x or
        line.max.y < rect.min.y or
        line.max.z < rect.min.z or
        rect.max.x < line.min.x or
        rect.max.y < line.min.y or
        rect.max.z < line.min.z
    then
        return
    end

    --Setting movement state to be on a ladder.
    ga_set_s("xar.inf2.movement.mod", "ladder_y_neg")
end

function p.__on_adj_block_changed(
    level, bp, side, old_bt, new_bt)
--
    -- ga_print("ladder_y_neg.on_adj_block_changed")
    -- ga_print("  old_bt = " .. tostring(old_bt))
    -- ga_print("  new_bt = " .. tostring(new_bt))

    if ga_bt_get_physically_solid(new_bt) then return end
    if side ~= 3 then return end

    ga_block_change_rl(level, bp, "block_e", 10.0)
end
