//@function				give_score()
//@description			Awards score and displays a scorecard
function give_score(amount) {
	with instance_create_layer(x,y,"BGUI",obj_scorecard) {
		value = amount;
	}
	score = clamp(score+amount,0,infinity);
}

//@function				scr_none()
//@description			Dummy Script
function scr_none(){
	var _id = -1;
	if instance_exists(id) _id = id;
	cout("[scr_none]: Called by "+string(_id)+"!");
}

//@function				cout(str)
//@description			Shortened Debug String function
function cout(str) {
	show_debug_message(str);
}

//@function				instance_correct_layer()
//@description			Function to move an instance to it's intended layer.
function instance_correct_layer() {
	var _instances_layer = layer_get_id("Instances");
	if layer!=_instances_layer {
		layer = _instances_layer;
	}
}

//Macros
#macro game_title "A Halloween Away"

	//Keycard Door Colors
#macro red_key		make_color_hsv(0,255,255);
#macro blue_key		make_color_hsv(140,255,255);
#macro green_key	make_color_hsv(90,255,255);
#macro yellow_key	make_color_hsv(40,255,255);
#macro no_key		make_color_hsv(0,0,120);

//Enums
enum dir {
	up = -2,
	left = -1,
	right = 1,
	down = 2
}