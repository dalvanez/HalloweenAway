trigger_script = function() {
	//Give Story
	queue_dialog(spr_player_dialog,"Oh man, I slept in!");
	queue_dialog(spr_player_dialog,"It's already Halloween night!");
	
	var _tlayer = layer_get_id("Collisions");	//Place collisions on bed
	var _tilemap = layer_tilemap_get_id(_tlayer);
	var tile = tilemap_get(_tilemap,14,7);
	tile_set_index(_tilemap,1);
	tilemap_set(_tilemap,tile,14,7);
	tile = tilemap_get(_tilemap,14,8);
	tilemap_set(_tilemap,tile,14,8);
	tile_set_index(_tilemap,1);
	tilemap_set(_tilemap,tile,14,8);
	
	active = false;	//Set inactive
}