/// @description Init
image_speed = 0;

//Use Variable Declaration Window for these
//open = false;		//Whether or not this door is opened.
//locked = true;	//Whether or not this door is locked and requires a keycard
//keybard = 0;		//The keycard required to make this door open, if applicable

//Variables
start_x = x;				//The starting position of the door
start_y = y;				//The starting position of the door
start_angle = image_angle;	//The starting angle of the door, in case this changes

//Coloration
switch(keycard) {
	case 0:
		image_blend = red_key;
		break;
	case 1:
		image_blend = blue_key;
		break;
	case 2:
		image_blend = green_key;
		break;
	case 3:
		image_blend = yellow_key;
		break;
	default:
		image_blend = no_key;
		break;
}

//Update State
if open {
	image_index = image_number-2;
	image_speed = 1;
}

//Methods
//These are really neat, so look them up in the manual (F1).

unlock = function() {	//Unlock the door and slide it open
	play_sound_single(snd_door_open);
	open = true;
	locked = false;
	image_speed = 1;
}

lock = function() {		//Lock the door and slide it closed
	play_sound_single(snd_door_close);
	open = false;
	locked = true;
	image_speed = -1;
}

toggle = function() {	//Let a lever toggle this door's state
	switch(open) {
		case false:
			unlock();
			break;
		default:
			lock();
			break;
	}
}

instance_correct_layer();