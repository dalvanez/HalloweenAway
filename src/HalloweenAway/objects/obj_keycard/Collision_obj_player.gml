/// @description Open Doors

with obj_space_door {
	if keycard==other.image_index && !open {
		unlock();	//Use the Door's Method for unlocking.
	}
}

with obj_fx_light {
	if light_set==other.light_set && light_set>=0 {
		toggle();	//Use the light's method for toggling it's state.
	}
}

// Inherit the parent event
event_inherited();