/// @description Skip Cutscene
if (!global.transition) {
	alarm[2] = 1;
	alarm[0] = -1;
	alarm[1] = -1;
	room_transition(next);
}