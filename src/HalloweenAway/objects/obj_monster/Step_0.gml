/// @description Hunt Player
if active {
	var _player = instance_nearest(x,y,obj_player);
	phy_rotation = -point_direction(x,y,_player.x,_player.y);

	var vx = _player.x - x;
	var vy = _player.y - y;
	var length = sqrt((power(vx,2))+(power(vy,2)));	//Wow it's trig class again

	if length > 3 {
		vx/=length;
		vy/=length;
	
		var _spd = move_speed*aggression;
		phy_speed_x = vx * _spd;
		phy_speed_y = vy * _spd;
	}
	
	var _grasp = collision_circle(x,y,40,obj_player,false,true);	//Slow the player when in grasp
	if instance_exists(_grasp) {
		with _grasp {
			phy_speed_x*=.4;
			phy_speed_y*=.4;
		}
	}
} else {
	phy_speed_x*=.5;
	phy_speed_y*=.5;
	light_radius*=.9;
}