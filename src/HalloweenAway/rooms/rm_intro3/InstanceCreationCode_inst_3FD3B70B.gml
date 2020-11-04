trigger_script = function() {
	var _cc = find_trigger("CandyComment");
	_cc.count = -1;
	queue_dialog(spr_player_dialog,"More candy?");
	active = false;
}