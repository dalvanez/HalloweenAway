/// @description Float
if floaty {
	x = home_x + cos(degtorad(interval)*2);
	y = home_y + sin(degtorad(interval)*2);
	interval+=irandom_range(-10,10);
	rotate_speed= clamp(rotate_speed+random_range(-1,1),-3,3);
	image_scale = clamp(image_scale+random_range(-.5,.5),.5,1.5);
	alarm[0] = 5;
} else {
	alarm[0] = -1;
}