trigger_script = function() {
	if count>=2 {
		queue_dialog(spr_player_dialog,"I seriously just followed the loop...");
	} else if count!=-1 {
		display_titlecard("OBJECTIVE FAILED","you didn't follow the loop",120);
	}
	queue_dialog(spr_player_dialog,"Where is everyone anyway?");
	active = false;
}