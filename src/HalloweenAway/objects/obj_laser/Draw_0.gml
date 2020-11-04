/// @description Draw Laser
var _fade = .2;
if (active) _fade = 1;
var _len = length-1;

draw_set_alpha(1);

switch(sign(_x)) {
	case 1:
		draw_sprite_ext(spr_fx_light,1,x+16,y+1,1,1,0,c_red,1);
		draw_set_alpha(_fade);
		draw_line_width_color(x+16,y,x+(_x*_len*16),y,width,c_red,c_red);
		break;
	case -1:
		_len--;
		draw_sprite_ext(spr_fx_light,1,x-16,y+1,1,1,0,c_red,1);
		draw_set_alpha(_fade);
		draw_line_width_color(x-16,y,x+(_x*_len*16),y,width,c_red,c_red);
		break;
}

switch(sign(_y)) {
	case 1:
		draw_sprite_ext(spr_fx_light,1,x+1,y+16,1,1,0,c_red,1);
		draw_set_alpha(_fade);
		draw_line_width_color(x,y+16,x,y+(_y*_len*16),width,c_red,c_red);
		break;
	case -1:
		_len--;
		draw_sprite_ext(spr_fx_light,1,x+1,y-16,1,1,0,c_red,1);
		draw_set_alpha(_fade);
		draw_line_width_color(x,y-16,x,y+(_y*_len*16),width,c_red,c_red);
		break;
}
	
draw_set_alpha(1);