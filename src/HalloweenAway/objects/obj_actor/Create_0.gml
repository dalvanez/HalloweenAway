/// @description Dummy Object to be manipulated by the cutscene object.
sprite_index = actor_sprite;
image_speed = 0;
walking = false;		//Whether or not the actor is walking around.
walk_cycle = 0;			//Input for Trig functions to animate the player walking
walk_cycle_speed = 15;	//Speed of the walk cycle

hs = 0;					//Horizontal speed of the actor
vs = 0;					//Vertical speed of the actor
start_x = x;			//Starting x of this actor
start_y = y;			//Starting y of this actor
interval = 0;			//Timer for trig functions