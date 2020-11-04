/// @description Check Collisions
if active {
	var _len = length-1;
	var _wid = width div 2;
	var _collide = false;
	switch(sign(_x)) {
		case 1:
			_collide = collision_rectangle(x+16,y+_wid,x+(_x*_len*16),y-_wid,obj_player,false,true);
			break;
		case -1:
			_len--;
			_collide = collision_rectangle(x-16,y+_wid,x+(_x*_len*16),y-_wid,obj_player,false,true);
			break;
	}
	
	switch(sign(_y)) {
		case 1:
			_collide = collision_rectangle(x-_wid,y+16,x+_wid,y+(_y*_len*16),obj_player,false,true);
			break;
		case -1:
			_len--;
			_collide = collision_rectangle(x-_wid,y-16,x+_wid,y+(_y*_len*16),obj_player,false,true);
			break;
	}
	
	if _collide {
		play_sound_single(snd_laser_hit);
		with (obj_player) player_hurt(1);
	}
}