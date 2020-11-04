/// @description Draw Fake Door
//We draw a sprite in the door's starting place since we physically move it to "disable" the collisions when it is open.
draw_sprite_ext(sprite_index,image_index,start_x,start_y,image_xscale,image_yscale,start_angle,c_white,image_alpha);
draw_sprite_ext(spr_space_door_markings,image_index,start_x,start_y,image_xscale,image_yscale,start_angle,image_blend,image_alpha);