--This is the default "recursively empty" block.
--This block is so common that I am putting it
--in the base package.
--It is useful for debugging.

function p.__get_is_solid() return false end
function p.__get_tex() return "" end
function p.__main() set_default_block("e") end
