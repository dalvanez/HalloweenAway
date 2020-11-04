/// @description Stop Flipping
image_speed = 0;
switch(flipped) {
	case true:
		image_index = 0;
		flipped = false;
		break;
	default:
		image_index = image_number-1;
		flipped = true;
		break;
}