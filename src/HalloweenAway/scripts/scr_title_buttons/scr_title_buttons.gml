//@function					check_mouse_over
//@description				Checks if the button was moused over
function check_mouse_over(index,mx,my){
	var _x = buttons[index][bttn.bx];
	var _y = buttons[index][bttn.by];
	var _w = buttons[index][bttn.bw];
	var _h = buttons[index][bttn.bh];
	if (mx > _x && mx < _x+_w && my > _y && my < _y+_h) {	//Mouse is inside
		return true;
	}
}

//@function					title_init_buttons()
//@description				Updates the individual buttons for the title screen
function title_init_buttons() {
	//Play Button
	buttons[0][bttn.bx] = 128;			//Button X
	buttons[0][bttn.by] = 90;			//Button Y
	buttons[0][bttn.bw] = 64;			//Button Width
	buttons[0][bttn.bh] = 16;			//Button Height
	buttons[0][bttn.btxt] = "Play";		//Button Text
	buttons[0][bttn.bfunc] = title_play_button;	//Button Fsunction
	
	//Quit Button
	buttons[1][bttn.bx] = 128;			//Button X
	buttons[1][bttn.by] = 130;			//Button Y
	buttons[1][bttn.bw] = 64;			//Button Width
	buttons[1][bttn.bh] = 16;			//Button Height
	buttons[1][bttn.btxt] = "Quit";		//Button Text
	buttons[1][bttn.bfunc] = title_quit_button;	//Button Function
}

//@function				draw_menu_buttons()
//@description			Draws the title menu button for the given index
function draw_menu_button(i) {
	var _x = buttons[i][bttn.bx];
	var _y = buttons[i][bttn.by];
	var _w = buttons[i][bttn.bw];
	var _h = buttons[i][bttn.bh];
	if (buttons[i][bttn.bstate]) draw_set_color(c_gray);
	else						 draw_set_color(c_dkgray);
	draw_rectangle(_x,_y,_x+_w,_y+_h,false);
	draw_set_color(c_white);
	draw_set_font(fnt_system);
	draw_text(_x+(_w/2)-string_width(buttons[i][bttn.btxt])/2,_y,buttons[i][bttn.btxt]);
}

//@function				title_play_button
//@description			Performs the play button's actions.
function title_play_button() {
	global_timer_start();
	room_transition(rm_cutsceneverystart);
}

//@function				title_quit_button
//@description			Performs the quit button's actions.
function title_quit_button() {
	game_end();
}