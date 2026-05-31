--File: base_blue_tele.lua

-------------------------------------------------------------------------------
--              Variables names that must by synced with other files
-------------------------------------------------------------------------------
--The person calling this script should never use these strings.

--Dynamic block variable names.
--These must by synced with "base/Game/base_game_tele_blue.lua".
local dyn_block_var_blue_type  = "dyn_base_blue_tele_type"
local dyn_block_var_blue_pos_x = "dyn_base_blue_tele_pos_x"
local dyn_block_var_blue_pos_y = "dyn_base_blue_tele_pos_y"
local dyn_block_var_blue_pos_z = "dyn_base_blue_tele_pos_z"

-------------------------------------------------------------------------------
--              Setting the "blue teleportation type" of a chunk
-------------------------------------------------------------------------------
--This is the only part of this script which can be called from the outside.
--These can be called within the __main functions of block scripts.

--Unless otherwise specified, a chunk is has "blue type up".
function p.set_blue_type_up()
    chunk_dyn_set_s(dyn_block_var_blue_type, "up")
end

function p.set_blue_type_down(x,y,z)
    chunk_dyn_set_s(dyn_block_var_blue_type, "down")
    chunk_dyn_set_i(dyn_block_var_blue_pos_x, x)
    chunk_dyn_set_i(dyn_block_var_blue_pos_y, y)
    chunk_dyn_set_i(dyn_block_var_blue_pos_z, z)
end

function p.set_blue_type_terminal(x,y,z)
    chunk_dyn_set_s(dyn_block_var_blue_type, "terminal")
    chunk_dyn_set_i(dyn_block_var_blue_pos_x, x)
    chunk_dyn_set_i(dyn_block_var_blue_pos_y, y)
    chunk_dyn_set_i(dyn_block_var_blue_pos_z, z)
end
