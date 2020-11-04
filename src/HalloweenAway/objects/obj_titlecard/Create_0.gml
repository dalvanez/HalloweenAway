/// @description Init
image_alpha = 0;	//Fade in alpha
timer = -55;		//Progress through animation
state = 0;			//State of the text (0 = Enter; 1 = Stay; 2 = Leave; 3 = Destroy)
wait_count = 0;		//Amount of times this card has waited to appear

//Display if there isn't any competition
if (instance_number(obj_titlecard)==1) alarm[0] = 2;
else								   alarm[1] = 60;