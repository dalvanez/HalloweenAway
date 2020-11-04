/// @description Toggle Active
switch(active) {
	case true:
		if (distance_to_object(obj_player)<256) play_sound_single(snd_laser_stop);
		create_particle_line(global.fx_smoke,c_black,1);
		active = false;
		break;
	default:
		if (distance_to_object(obj_player)<256) play_sound_single(snd_laser_shoot);
		create_particle_line(laser_enable,c_red,8);
		active = true;
		break;
}
if (toggle) alarm[0] = time;
else		{
	active = false;
	alarm[0] = -1;
}