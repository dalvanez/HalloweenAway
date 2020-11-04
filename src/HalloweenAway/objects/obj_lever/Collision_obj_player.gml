/// @description Toggle Stuff
if image_speed==0 {
	//Toggle all instances on instances layer that have the "lever" tag on them.
	if (!ignore_layer) lever_toggle_instances(lever);		//Only affects instances on the "Instances" Layer!
	else			   lever_toggle_all_instances(lever);	//Most likely slower! Use only when needed.
	
	//Flip lever
	if (flipped) image_speed = -1;
	else		 image_speed =  1;
}