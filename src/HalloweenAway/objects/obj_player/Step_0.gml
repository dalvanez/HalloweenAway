/// @description Movement
if mouse_check_button(mb_left) && !global.forcenocontrols && !global.transition && hp>0 {
	var vx = mouse_x - x;
	var vy = mouse_y - y;
	var length = sqrt((power(vx,2))+(power(vy,2)));	//Wow it's trig class again
	
	if length > 3 || floaty {	//If it's a distance worth walking or if the player is floating
		vx/=length;
		vy/=length;
	
		if (!floaty) {		//Animate the walk cycle
			hs = vx * move_speed;
			vs = vy * move_speed;
			walk_cycle+=walk_cycle_speed;
			if (mouse_x < x) image_xscale = -1;
			else			 image_xscale = 1;
		} else {
			phy_rotation = -(point_direction(x,y,mouse_x,mouse_y)-90);	//Rotate the character to face the mouse
			hs+= (vx * move_speed)*.1;	//Accelerate instead of set the speed
			vs+= (vy * move_speed)*.1;
			if (current_time%3==0)  part_particles_create(player_fx,x,y,jetpack_puff,1);
			if (current_time%32==0) part_particles_create(player_fx,x,y,jetpack_smoke,1);
		}
	} else if !floaty {		//Stop walking if it's not worth it.
		hs = 0;
		vs = 0;
		walk_cycle = 0;
	}
} else if !global.transition {	//If there isn't a transition, slow down.
	//Gradually lose momentum, if floaty
	if (floaty) {
		hs*=0.98;
		vs*=0.98;
	} else {
		hs = 0;
		vs = 0;
	}
	walk_cycle = 0;
} else if (abs(hs)>0 || abs(vs)> 0) {
	walk_cycle+=walk_cycle_speed;
}

//Clamp the Speed
var _clamp_spd = max_move_speed;		//The Maximum speed for the player
if (!floaty) {
	hs = clamp(hs,-_clamp_spd,_clamp_spd);
	vs = clamp(vs,-_clamp_spd,_clamp_spd);
}

if (walk_cycle > 359) walk_cycle-=360;	//Keep this within 2pi

//Move the player
if (!global.transition) {
	player_check_collisions();
	player_check_health();
}

if !floaty {
	phy_position_x+=hs;
	phy_position_y+=vs;
} else {
	phy_speed_x+=hs;
	phy_speed_y+=vs;
	
	_clamp_spd = max_float_speed;
	phy_speed_x = clamp(hs,-_clamp_spd,_clamp_spd);
	phy_speed_y = clamp(vs,-_clamp_spd,_clamp_spd);
}

hp = clamp(hp,0, infinity);