function p.__get_is_solid() return false end
function p.__get_tex() return "" end

function p.__get_inv_tex_x_pos() return "block_side_ladder" end

function p.__main()
    set_default_block("e")

    create_rect("r_black", 12,0,4,  15,15,4)
    create_rect("r_black", 12,0,11, 15,15,11)

    create_rect("ladder_x_pos", 14,4,0,  14,4,15)
    create_rect("r_white", 15,4,0,  15,4,15)
    --
    create_rect("ladder_x_pos", 14,11,0, 14,11,15)
    create_rect("r_white", 15,11,0, 15,11,15)
end

function p.__on_close(level, bp)
    --Body dimensions.
    local radius = ga_get_sys_f("game.player.move.ground.radius")
    local bot_to_eye = ga_get_sys_f("game.player.move.ground.bot_to_eye")
    local eye_to_top = ga_get_sys_f("game.player.move.ground.eye_to_top")

    --Need to get the viewer's pos.
    --(in the local coords of the center metachunk,
    --which implies it is in level coords).
    local eye = ga_get_sys_v("game.player.camera.offset")

    local line = {}
    line.min = {x = eye.x+radius, y = eye.y, z = eye.z-bot_to_eye}
    line.max = {x = eye.x+radius, y = eye.y, z = eye.z+eye_to_top}

    local thick = 0.1
    local rect = {}
    rect.min = {x = (bp.x+1-thick), y = bp.y, z = bp.z}
    rect.max = {x = (bp.x+1),       y = bp.y+1, z = bp.z+1}

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
    ga_set_s("xar.inf2.movement.mod", "ladder_x_pos")
end

function p.__on_adj_block_changed(
    level, bp, side, old_bt, new_bt)

    if ga_bt_get_physically_solid(new_bt) then return end
    if side ~= 0 then return end

    --NEED TO THINK ABOUT THE RAMIFICATIONS OF CHANGING
    --THE CURRENT BLOCK FROM THE BLOCK LUA SCRIPT
    --
    --THE REVERT TIME IS NOT RIGHT:
    --IT SHOULD BE THE SAME AS THE REVERY TIME FOR THIS BLOCK.
    ga_block_change_rl(level, bp, "block_e", 10.0)
end
