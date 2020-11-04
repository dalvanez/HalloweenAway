/// @description End the Cutscene
key_moment = -4;
global.forcenocontrols = false;
instance_destroy();
room_transition(next);
alarm[0] = -1;
alarm[1] = -1;