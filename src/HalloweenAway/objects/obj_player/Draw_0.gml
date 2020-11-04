/// @description Animate
var _rot = 0;	//Amount to rotate the sprite by.
var _y = 0;		//Amount to "bounce" sprite by.

if !floaty {
	var _tip = sin(degtorad(walk_cycle))*20;
	if (abs(_tip)>15 && abs(_tip)<25) {	//Create the "three frame" walk cycle
		_rot = _tip;
		_y = 1;
	} else {
		_rot = 0;
		_y = 0;
	}
} else {
	draw_sprite_ext(spr_firework_player,1,x,y,image_xscale,image_yscale,image_angle+_rot,image_blend,image_alpha);
}
if (hp>=3) draw_sprite_ext(sprite_index,image_index,x,y-_y,image_xscale,image_yscale,image_angle+_rot,image_blend,image_alpha);
else	  draw_sprite_ext(sprite_index,4-hp,x,y-_y,image_xscale,image_yscale,image_angle+_rot,image_blend,image_alpha);