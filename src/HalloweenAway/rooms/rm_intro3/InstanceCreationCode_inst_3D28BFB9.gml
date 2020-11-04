trigger_script = function() {
	queue_dialog(spr_player_dialog,"They put the candy in a loop?");
	display_titlecard("OBJECTIVE","follow the loop",120);
	var _l2 = find_trigger("Loop2");
	_l2.active = true;
	var _cc = find_trigger("CandyComment");
	_cc.count = 0;
	active = false;
}