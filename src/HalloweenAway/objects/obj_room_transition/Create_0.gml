/// @description Init
global.transition = true;	//Set the transitioning state to true so the player stops making inputs.
image_alpha = 0;			//Fade Alpha
state = 0;					//State of the transition (0 = Fade in; 1 = Fade out)

if (instance_number(obj_room_transition)>1) instance_destroy();	//There should not be more than one of these.