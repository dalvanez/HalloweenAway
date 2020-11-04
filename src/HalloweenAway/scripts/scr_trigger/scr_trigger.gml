//@function				find_trigger();
//@description			Finds the first trigger with the specified name and returns its ID.
function find_trigger(name){
	var _num = instance_number(obj_trigger);
	for (var i = 0; i < _num; i++) {
		var _trigger = instance_find(obj_trigger,i);
		if (_trigger.trigger_name==name) {
			return _trigger;	//Return the trigger with the correct name
		}
	}
	return noone;	//Failed to find a trigger with the name provided.
}

//@function				room_transition();
//@description			Fades the screen to black and then transitions to the specified room.
function room_transition(next_room) {
	if !instance_exists(obj_room_transition) {
		with instance_create_layer(0,0,"GUI",obj_room_transition) {
			next = next_room;
		}
	}
}

//@function				lever_toggle_instances();
//@description			Toggles all instances with the "lever" tag on the "Instances" Layer
function lever_toggle_instances(_l) {
	var _lay = layer_get_id("Instances");
	var _instances = layer_get_all_elements(_lay);
	for (var i = 0; i < array_length(_instances); i++) {
		var _instance = layer_instance_get_instance(_instances[i]);
		with _instance {
			if asset_has_tags(asset_get_index(object_get_name(object_index)),"lever",asset_object) {
				if (lever==_l && lever>=0) toggle();
			}
		}
	}
}

//@function				lever_toggle_all_instances();
//@description			Toggles all instances with the "lever" tag; possibly slower since unnecessary instances like the GUI stuff will run this too.
function lever_toggle_all_instances(_l) {
	with all {
		if asset_has_tags(asset_get_index(object_get_name(object_index)),"lever",asset_object) {
			if (lever==_l && lever>=0) toggle();
		}
	}
}