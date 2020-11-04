/// @description
obj_global.candy_collected = obj_global.last_collected;	//Reset candy collected
room_transition(global.checkpoint);
alarm[0] = -1;