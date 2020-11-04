trigger_script = function() {
	with obj_player {	//Stop walking
		hs = 0;
		vs = 0;
	}
	room_transition(rm_intro2);
	active = false;
}