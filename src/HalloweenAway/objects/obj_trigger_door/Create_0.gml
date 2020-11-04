/// @description Init
collided = false;	//Whether or not the player has entered this trigger before

trigger_script = function() {	//This is a special trigger that reduces player speed and transitions the room in the floating sections
	with obj_player {
		hs*= .1;
		vs*= .1;
		phy_speed_x*=.7;
		phy_speed_y*=.7;
	}
	room_transition(next_room);
	active = false;
}

if (on_touch || on_leave) alarm[0] = 1;