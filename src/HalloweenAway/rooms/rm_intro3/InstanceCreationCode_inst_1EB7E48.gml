trigger_script = function() {
	var _l3 = find_trigger("Loop3");
	_l3.active = true;
	var _cc = find_trigger("CandyComment");
	_cc.count+=1;
	active = false;
}