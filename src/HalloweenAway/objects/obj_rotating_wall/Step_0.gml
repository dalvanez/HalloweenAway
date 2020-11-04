/// @description Rotate
if active {
	if (rotate_speed!=default_speed) {
		if (current_speed<1) current_speed+=.2;		//Increase the current speed
		rotate_speed = default_speed*current_speed;	//Set the rotation speed to the current speed.
	}
} else {
	if (rotate_speed!=0) {
		if (current_speed>0) current_speed-=.2;		//Decrease the current speed
		rotate_speed = default_speed*current_speed;	//Set the rotation speed to the current speed.
	}
}

phy_rotation+=rotate_speed;	//Rotate the wall