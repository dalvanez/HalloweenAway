trigger_script = function() {
	var door = find_trigger("Door");
	door.active = true;
	with obj_player {
		image_index = 1;
	}
	instance_destroy(find_trigger("Costume_Warning"));
}