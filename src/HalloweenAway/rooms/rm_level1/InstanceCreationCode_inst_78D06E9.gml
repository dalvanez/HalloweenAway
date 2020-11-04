trigger_script = function() {
	if instance_nearest(x,y,obj_space_door).locked {
		queue_dialog(spr_player_dialog,"I'll need a keycard to open this.");
		queue_dialog(spr_player_dialog,"Why did he lock the door on me?");
	}
	active = false;
}