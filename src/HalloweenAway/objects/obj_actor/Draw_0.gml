/// @description Draw Walking
var _rot = 0;	//Amount to rotate the sprite by.
var _y = 0;		//Amount to "bounce" sprite by.

var _tip = sin(degtorad(walk_cycle))*20;
if (abs(_tip)>15 && abs(_tip)<25) {	//Create the "three frame" walk cycle
	_rot = _tip;
	_y = 1;
} else {
	_rot = 0;
	_y = 0;
}

draw_sprite_ext(sprite_index,image_index,x,y-_y,image_xscale,image_yscale,image_angle+_rot,image_blend,image_alpha);