//@function				queue_dialog();
//@description			Queues up dialog, creating a dialogue manager if needed.
function queue_dialog(sprite,text) {
	if !instance_exists(obj_dialogue_manager) {	//Make a dialogue manager if one doesn't exist
		instance_create_layer(0,0,"GUI",obj_dialogue_manager);
	}
	
	with obj_dialogue_manager {					//Queue the dialog for the manager.
		if (ds_exists(dialog,ds_type_queue)) ds_queue_enqueue(dialog,sprite,text);
	}
}

//@function				display_titlecard();
//@description			Displays a title card for showing objectives and hints or whatever
function display_titlecard(title_text,subtitle_text,display_time) {
	with instance_create_layer(0,0,"GUI",obj_titlecard) {
		text = title_text;
		subtext = subtitle_text;
		time = display_time;
	}
}