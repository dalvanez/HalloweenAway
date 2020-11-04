/// @description Update State
switch(state) {
	case 0:
		if (image_alpha>=1) state++;
		else image_alpha+=.1;
		alarm[0] = 1;
		break;
	case 1:
		state++;
		alarm[0] = time;
		break;
	case 2:
		if (image_alpha<=0) state++;
		else image_alpha-=.1;
		alarm[0] = 1;
		break;
	default:
		instance_destroy();
		break;
}

if (timer<=5) timer+=8;
else if (timer<= 50) timer+=.5;