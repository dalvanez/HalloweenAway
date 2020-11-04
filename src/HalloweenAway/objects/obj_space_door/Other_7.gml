/// @description Change State
switch(open) {
	case true:
		phy_position_x = -1000;
		phy_position_y = -1000;
		image_speed = 0;
		image_index = image_number-1;
		break;
	default:
		phy_position_x = start_x;
		phy_position_y = start_y;
		image_speed = 0;
		image_index = 0;
		break;
}