 function p.__get_is_solid() return false end
 function p.__get_tex() return "" end
 function p.__main()
 set_default_block("e")--Generating the chunk as if--it was of type XAR_SMALL_YELLOW_FLOWER.
 create_xar_chunk("XAR_SMALL_YELLOW_FLOWER_SECRET_WALL")--Replacing the yellow block in the yellow flower--with a meme block.
 for x = 0,15 do
 for y = 0,15 do
 for z = 0,15 do
 if( get_pos(x,y,z) == "XAR_SOLID_BORING" ) then
 set_pos(x,y,z, "e")--Solid cement block.
 end
 end end end
 end
 