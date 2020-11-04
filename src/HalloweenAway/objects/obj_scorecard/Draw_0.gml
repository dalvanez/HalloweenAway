/// @description Display
draw_set_font(fnt_game);
var _str = string(value);
draw_text(x-(string_width(_str)/2),y,_str);