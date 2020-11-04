trigger_script = function() {
	if obj_player.image_index==0 && !instance_exists(obj_dialog) {
		queue_dialog(spr_player_dialog,"I can't trick or treat naked!");
		queue_dialog(spr_player_dialog,"I need to put on my costume.");
		active = false;
	}
}