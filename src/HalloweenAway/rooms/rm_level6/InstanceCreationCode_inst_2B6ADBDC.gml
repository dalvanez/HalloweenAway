trigger_script = function() {
	play_sound(snd_helmet_break);
	with obj_monster {
		phy_position_x = 255;
		phy_position_y = 366;
		light_radius = 2;
	}
	with instance_nearest(x,y,obj_space_door) {
		phy_position_x = start_x;
		phy_position_y = start_y;
	}
	lever_toggle_instances(9);
	lever_toggle_instances(0);
	queue_dialog(spr_player_dialog,"W-what was that?!");
	active = false;
}