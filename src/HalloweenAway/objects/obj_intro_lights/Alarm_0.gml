/// @description turn the lights on
global.forcenocontrols = false;
if instance_exists(obj_lamp) {
	with (obj_lamp) lights_on = true;
}
display_titlecard("OBJECTIVE","hold left click to move out of bed",160);
instance_destroy();
alarm[0] = -1;