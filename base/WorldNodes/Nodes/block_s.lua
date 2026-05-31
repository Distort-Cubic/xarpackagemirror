--This is the default "recursively solid" block.
--This block is so common that I am putting it
--in the base package.
--It is useful for debugging.

function p.__get_is_solid() return true end
function p.__get_tex() return "blocktex_default" end
function p.__main() set_default_block("s") end
