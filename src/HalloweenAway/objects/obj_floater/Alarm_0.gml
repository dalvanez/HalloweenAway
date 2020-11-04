/// @description Float
if !dragging {
	x = (cos(degtorad(interval))*3)+home_x;
	y = (sin(degtorad(interval))*3)+home_y;
	rotate_speed = clamp(rotate_speed+random_range(-.4,.4),-1,1);

	interval+=2;
	if (interval>359) interval-=360;
	alarm[0] = 1;
}