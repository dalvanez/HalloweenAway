/// @description Draw Title
var _w = display_get_gui_width();
//var _h = display_get_gui_height();
draw_set_font(fnt_system);
draw_set_color(c_white);
draw_text((_w/2)-string_width(game_title)/2,16,game_title);	//Draw Title

for (var i = 0; i < array_length(buttons); i++) {	//Draw Buttons
	draw_menu_button(i);
}