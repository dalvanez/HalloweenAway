/// @description Manage Fade
//I've done a lot of these in this project, heh.
switch(state) {
	case 0:
		if (image_alpha<1) image_alpha+=fade_speed;
		else {
			room_goto(next);	//Go to the specified room while the screen is black
			state++;
		}
		break;
	case 1:
		if (image_alpha>0) image_alpha-=fade_speed;
		else {
			state++;
		}
		break;
	default:
		instance_destroy();
		break;				//I put these breaks here after destroying because destroying actually completes after the step.
}