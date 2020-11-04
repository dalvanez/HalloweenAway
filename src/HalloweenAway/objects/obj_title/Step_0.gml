/// @description Button Controls
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
for (var i = 0; i < array_length(buttons); i++) {
	buttons[i][bttn.bstate] = check_mouse_over(i,mx,my);
	if buttons[i][bttn.bstate] && mouse_check_button_pressed(mb_left) {
		script_execute(buttons[i][bttn.bfunc]);
	}
}