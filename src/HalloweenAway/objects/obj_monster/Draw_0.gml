/// @description Draw the spooks
//Get View Size
var _x = camera_get_view_x(view_camera[0]);
var _y = camera_get_view_y(view_camera[0]);
var _w = camera_get_view_width(view_camera[0]);
var _h = camera_get_view_height(view_camera[0]);

//Draw Darkness
draw_set_alpha(1);
if !surface_exists(darkness) {
	darkness = surface_create(_w+16,_h+16);
} else {
	//Set the surface and paint it black!
	surface_set_target(darkness);
	draw_clear_alpha(c_black,1);
	draw_rectangle_color(_x,_y,_w+16,_h+16,c_black,c_black,c_black,c_black,false);
	gpu_set_blendmode(bm_subtract);
	
	//Draw the circle around the player
	var _off = (16*light_radius);
	var _player = instance_nearest(x,y,obj_player);
	var _xx = _player.x-_x;	//player x relative to the camera
	var _yy = _player.y-_y; //player y relative to the camera
	draw_circle_color(_xx,_yy,_off,c_white,c_white,false);
	
	//Draw any circles around any active lights
	draw_set_alpha(.6);
	for (var i = 0; i < instance_number(obj_fx_light); i++) {
		var _light = instance_find(obj_fx_light,i);
		if _light.lights_on {
			var _lx = _light.x-_x;
			var _ly = _light.y-_y;
			draw_circle_color(_lx-1,_ly-1,_light.light_radius*12,c_white,c_white,false);
		}
	}
	draw_set_alpha(1);
	
	//Reset stuff to normal
	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_surface(darkness,_x,_y);
}

//Draw Monster
for (var i = 0; i < 8; i++) {
	draw_sprite_ext(spr_space_tentacle,image_index+i,x,y,1,1,image_angle+(-120+(40*i)),c_black,image_alpha);
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,image_angle,image_blend,image_alpha);