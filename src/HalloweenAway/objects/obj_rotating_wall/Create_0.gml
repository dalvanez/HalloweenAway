/// @description Init
default_speed = rotate_speed;	//The normal speed of this wall
current_speed = 1;				//Percentage of the normal speed this wall is moving at.

//Methods

toggle = function() {	//Toggle this wall's active state
	switch(active) {
		case true:
			active = false;
			break;
		default:
			active = true;
			break;
	}
}

instance_correct_layer();