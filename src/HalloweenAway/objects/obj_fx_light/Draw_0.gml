/// @description Draw Light
draw_sprite(sprite_index,image_index,x,y);
if lights_on {
	image_index = 1;
	draw_set_alpha(.3);
	draw_circle_color(x-1,y-1,light_radius*8,light_color,light_color,false);
	draw_set_alpha(.2);
	draw_circle_color(x-1,y-1,light_radius*13,light_color,light_color,false);
	draw_set_alpha(.1);
	draw_circle_color(x-1,y-1,light_radius*16,light_color,light_color,false);
} else image_index = 0;
draw_set_alpha(1);
