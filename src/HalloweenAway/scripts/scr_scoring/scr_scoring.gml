//@function			global_timer_start();
//@description		Starts the playtime timer
function global_timer_start(){
	with obj_global {
		time_spent = 0;
		alarm[0] = 60;
	}
}

//@function			get_time_spent();
//@description		Returns a string containing the time spent playing
function get_time_spent() {
	var _min = 0;
	var _sec = 0;
	if (obj_global.time_spent>=60) {
		_min = obj_global.time_spent div 60;
	}
	_sec = obj_global.time_spent % 60;
	
	return (string(_min)+" minute(s), "+string(_sec)+" seconds.");
}

//@function			get_time_spent();
//@description		Returns a string containing the time spent playing
function get_candy_collected() {
	return (string(obj_global.candy_collected)+"/"+string(obj_global.candy_total));
}