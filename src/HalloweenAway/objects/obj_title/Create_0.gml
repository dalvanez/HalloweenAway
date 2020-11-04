/// @description Init
play_music(mus_title);
buttons = array_create(button_count);

enum bttn {	//Enumerator to make keeping track of the button array easier.
	bx,
	by,
	bw,
	bh,
	btxt,
	bfunc,
	bstate
}

for (var i = 0; i < array_length(buttons); i++) {
	buttons[i][bttn.bx] = 16*i;			//Button X
	buttons[i][bttn.by] = 16*i;			//Button Y
	buttons[i][bttn.bw] = 64;			//Button Width
	buttons[i][bttn.bh] = 16;			//Button Height
	buttons[i][bttn.btxt] = "Button";	//Button Text
	buttons[i][bttn.bfunc] = scr_none;	//Button Function
	buttons[i][bttn.bstate] = false;	//Button Hover
}

title_init_buttons();	//Get the buttons from a function