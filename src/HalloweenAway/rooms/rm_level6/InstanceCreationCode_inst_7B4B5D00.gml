trigger_script = function() {
	with obj_fx_light {
		if (light_set==0) toggle();
	}
	active = false;
}