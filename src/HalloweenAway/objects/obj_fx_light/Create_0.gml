/// @description Init
//Methods
toggle = function() {
	switch(lights_on) {
		case true:
			lights_on = false;
			break;
		case false:
			lights_on = true;
			break;
	}
}