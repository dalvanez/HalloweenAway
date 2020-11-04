/// @description Init
//active = true;	//Whether or not this laser is firing; use variable definitions
toggle = true;	//Whether or not this laser is toggling it's active state
length = 0;		//The Length in tiles of the laser
width = 2;		//The Width of the drawn laser line

if (toggle) alarm[0] = time;

//Methods
enable = function() {	//Enable this laser along with its timer
	active = true;
	toggle = true;
	alarm[0] = time;
}

disable = function() {	//Disable this laser entirely including its timer
	active = false;
	toggle = false;
	alarm[0] = -1;
}

toggle = function() {	//Toggle whether the laser is enabled or disabled.
	switch(active) {
		case true:
			disable();
			break;
		case false:
			enable();
			break;
	}
}

instance_correct_layer();

//Create a line of particles along the laser path
create_particle_line = function(_part,_col,_num) {
	var _len = length-1;
	if (sign(_x)==-1 || sign(_y)==-1) _len = length-2;
	for (var i = 0; i < _len; i++) {
		if (abs(_x)>0) {
			part_particles_create_color(global.p_fx,x+(_x*(16+(i*16))),y,_part,_col,_num);
		} else {
			part_particles_create_color(global.p_fx,x,y+(_y*(16+(i*16))),_part,_col,_num);
		}
	}
}

//Get Laser Orientation
_x = 0;
_y = 0;
var i = 1;
var _o = abs(image_angle);
if (_o>=0 && _o<90) {			//Right
	_x = 1;
} else if (_o>=90 && _o<180) {	//Up
	_y = -1;
	i = 2;
} else if (_o>=180 && _o<270) {	//Left
	_x = -1;
	i = 2;
} else {						//Down
	_y = 1;	
}

//Measure length
var _colayer = layer_get_id("Collisions");
var collision = layer_tilemap_get_id(_colayer);
var _clear = true;


if abs(_y)>0 {
	while(_clear) {
		var tx = tilemap_get_cell_x_at_pixel(collision,x,y+(_y*16*i));
		var ty = tilemap_get_cell_y_at_pixel(collision,x,y+(_y*16*i));
		var tile = tilemap_get(collision,tx,ty);
		_clear = tile_get_empty(tile);
		i++;
	}
} else if abs(_x)>0 {
	while(_clear) {
		var tx = tilemap_get_cell_x_at_pixel(collision,x+(_x*16*i),y);
		var ty = tilemap_get_cell_y_at_pixel(collision,x+(_x*16*i),y);
		var tile = tilemap_get(collision,tx,ty);
		_clear = tile_get_empty(tile);
		i++;
	}
}
length = i;

//Particles
laser_enable = part_type_create();
part_type_sprite(laser_enable,spr_fx_particle,false,false,true);
part_type_life(laser_enable,12,18);
part_type_speed(laser_enable,.1,1,-.04,.01);
part_type_orientation(laser_enable,0,359,0,.1,false);
part_type_direction(laser_enable,0,359,0,.1);
part_type_alpha2(laser_enable,1,.1);