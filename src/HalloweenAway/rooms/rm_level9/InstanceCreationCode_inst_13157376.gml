trigger_script = function() {
	if instance_nearest(x,y,obj_space_door).open==false {
		queue_dialog(spr_player_dialog,"There isn't a keycard for this door!");
		queue_dialog(spr_player_dialog,"I need to go back to pull the lever!!!");
	}
	active = false;
}