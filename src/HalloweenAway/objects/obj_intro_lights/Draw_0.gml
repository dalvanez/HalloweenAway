/// @description Dim the room
draw_set_alpha(0.7);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);	//Overlay darkness on the scene
draw_set_alpha(1);
draw_set_color(c_white);