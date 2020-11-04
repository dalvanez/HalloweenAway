/// @description Create FX Manager
if (!instance_exists(obj_fx_manager)) instance_create_layer(0,0,"Instances",obj_fx_manager);
if (previous_room!=room) candy_total+=instance_number(obj_candy);