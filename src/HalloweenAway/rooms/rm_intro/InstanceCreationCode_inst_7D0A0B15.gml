trigger_script = function() {
	if !instance_exists(obj_dialog) {
		queue_dialog(spr_player_dialog,"I've no time to sift through my clothes!");
		queue_dialog(spr_player_dialog,"... I can fold those later.");
		active = false;
	}
}