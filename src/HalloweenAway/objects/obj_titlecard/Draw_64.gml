/// @description Draw Text
var _w = display_get_gui_width();
var _h = display_get_gui_height();
draw_set_font(fnt_titlecard);
draw_set_color(c_white);
draw_set_alpha(image_alpha);
draw_text_transformed((_w/2)-(string_width(text)/2),(_h/2)-8,text,1,1,timer);
draw_set_font(fnt_system);
draw_text_transformed((_w/2)-(string_width(subtext)/2),(_h/2)+18,subtext,1,1,timer);
draw_set_alpha(1);