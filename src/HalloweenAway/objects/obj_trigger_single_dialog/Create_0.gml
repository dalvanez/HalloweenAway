/// @description Init
collided = false;	//Whether or not the player has entered this trigger before

trigger_script = function() {
	queue_dialog(image,text);
	active = false;
}

if (on_touch || on_leave) alarm[0] = 1;