/// @description Change State
switch(state) {	//This manages when the dialog is fading in, staying, fading out, and then cleaning up.
	case 0:	//Fade in
		if (image_alpha>=1) state++;
		else image_alpha+=.2;
		alarm[0] = 2;
		break;
	case 1:	//Stay
		state++;
		alarm[0] = time;
		break;
	case 2:	//Fade out
		if (image_alpha<=0) state++;
		else image_alpha-=.2;
		alarm[0] = 2;
		break;
	default: //Destroy
		instance_destroy();
		break;
}