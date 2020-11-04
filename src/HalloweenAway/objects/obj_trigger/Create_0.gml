/// @description Init
collided = false;	//Whether or not the player has entered this trigger before

trigger_script = function() {
	cout("[obj_trigger | "+string(id)+"]: Yippie! Triggered.");
}

if (on_touch || on_leave) alarm[0] = 1;