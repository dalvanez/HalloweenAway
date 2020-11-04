/// @description Spin
image_angle+=rotate_speed;
if (point_in_rectangle(mouse_x,mouse_y,bbox_left,bbox_top,bbox_right,bbox_bottom)) {
	if mouse_check_button(mb_left) {
		dragging = true;
	}
}

if mouse_check_button_released(mb_left) {
	dragging = false;
	alarm[1] = 120;
}

if dragging {
	x = mouse_x;
	y = mouse_y;
	alarm[0] = -1;
}