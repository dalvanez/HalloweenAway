/// @description Draw Dialog
if key_moment!=-4 {
	var _w = display_get_gui_width();
	var _h = display_get_gui_height();
	var _dh = 64;
	draw_set_color(c_dkgray);
	draw_set_alpha(0.8);
	draw_rectangle(0,_h-_dh,_w,_h,false);				//Textbox
	draw_rectangle(0,_h-_dh-16,_w/4,_h-_dh-1,false);	//Name Box
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text(2,_h-_dh-12,speaker_name);				//Name
	draw_text(2,_h-_dh+12,display_text);				//Text

	if (text_index>=string_length(speaker_text)) {	//Text finished dot
		var radius = 3;
		draw_circle(_w-(radius*2),_h-(radius*2),radius,false);
	}
}