--This is the default "recursively solid and invisible" block.
--This block is so common that I am putting it
--in the base package.

--Does not matter because we define each solid function.
function p.__get_is_solid() return true end

--If not all of these functions should return the
--same thing, then you should define all of them.
function p.__get_is_solid_physically() return true end
function p.__get_is_solid_move_body() return true end
function p.__get_is_solid_visibly() return false end
function p.__get_is_solid_visibly_glass() return false end

function p.__get_tex() return "" end --Will not use.

function p.__main() set_default_block("block_invisible") end
