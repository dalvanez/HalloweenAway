/// @description Init
if (random_sprite) image_index = irandom_range(0,image_number);	//Pick a random piece of candy as a sprite, if not predefined

//Establish an orbiting point for floating mode
home_x = x;		//Home X point to float around
home_y = y;		//Home Y point to float around
interval = 0;	//Degree put into the trig functions
rotate_speed = choose(4,-2,2,-4);	//Speed in which to rotate at when floating
image_scale = 1;					//Scale of the candy while floating

if instance_exists(obj_player) {	//Match player's floating mode
	if (obj_player.floaty) floaty = true;
}