//@function				player_check_collisions();
//@description			Runs both object and tile collision functions for the player
function player_check_collisions(){
	player_check_tile_collisions();
	player_check_object_collisions();
}

//@function				player_check_tile_collisions();
//@description			Checks the player collisions and reduces the speed or cancels it entirely if there is any collisions
function player_check_tile_collisions() {
	//I made a super basic tile collision system since I didn't want to have to place a bunch of collision objects in every level.
	//While making use of collision objects and GMS2's physics system would be way more accurate, I find it less time consuming to
	//set it up so that I can just use the fill tool with the tilemaps and call it a day.
	var _clearx = true;
	var _cleary = true;
	var _loops = 0;

	//X Collisions
	var tx = tilemap_get_cell_x_at_pixel(collisions,x+phy_speed_x,y);
	var ty = tilemap_get_cell_y_at_pixel(collisions,x+phy_speed_x,y);
	if (hs > 0) {												//Check the right
		tx = tilemap_get_cell_x_at_pixel(collisions,bbox_right+phy_speed_x,y);
		ty = tilemap_get_cell_y_at_pixel(collisions,bbox_right+phy_speed_x,y);
	} else {													//Check the left
		tx = tilemap_get_cell_x_at_pixel(collisions,bbox_left+phy_speed_x,y);
		ty = tilemap_get_cell_y_at_pixel(collisions,bbox_left+phy_speed_x,y);
	}
	var tile = tilemap_get(collisions,tx,ty);
	var _clearx = tile_get_empty(tile);

	while(!_clearx) {
		if (!floaty) hs*=.6;
		_loops++;
	
		if _loops > 12 {
			if !floaty {
				hs = 0;
			} else {
				player_check_bonk();
				hs*=-.8;
			}
			_clearx = true;
		}
	}

	//Y Collisions
	if (vs < 0) {												//Check the top
		tx = tilemap_get_cell_x_at_pixel(collisions,x,bbox_top+phy_speed_y);
		ty = tilemap_get_cell_y_at_pixel(collisions,x,bbox_top+phy_speed_y);
	} else {													//Check the bottom
		tx = tilemap_get_cell_x_at_pixel(collisions,x,bbox_bottom+phy_speed_y);
		ty = tilemap_get_cell_y_at_pixel(collisions,x,bbox_bottom+phy_speed_y);
	}
	var tile = tilemap_get(collisions,tx,ty);
	var _cleary = tile_get_empty(tile);

	_loops = 0;
	while (!_cleary) {
		if (!floaty) vs*=.6;
		_loops++;
	
		if _loops > 12 {
			if !floaty {
				vs = 0;	
			} else {
				player_check_bonk();
				vs*=-.8;
			}
			_cleary = true;
		}
	}
	
	//X+Y Collisions
	tx = tilemap_get_cell_x_at_pixel(collisions,x+phy_speed_x,y+phy_speed_y);
	ty = tilemap_get_cell_y_at_pixel(collisions,x+phy_speed_x,y+phy_speed_y);
	var tile = tilemap_get(collisions,tx,ty);
	var _clear = tile_get_empty(tile);
	
	_loops = 0;
	while (!_clear) {
		if !floaty {
			hs*=.6;
			vs*=.6;
		}
		_loops++;
	
		if _loops > 12 {
			if !floaty {
				hs = 0;
				vs = 0;	
			} else {
				player_check_bonk();
				hs*=-.8;
				vs*=-.8;
			}
			_clear = true;
		}
	}
	
	//Crushed by tile
	//X+Y Collisions
	tx = tilemap_get_cell_x_at_pixel(collisions,x,y);
	ty = tilemap_get_cell_y_at_pixel(collisions,x,y);
	var tile = tilemap_get(collisions,tx,ty);
	var _crushed = tile_get_empty(tile);
	
	_loops = 0;
	while (!_crushed) {
		_loops++;
	
		if _loops > 12 {
			hp = 0;
			_crushed = true;
		}
	}
}

//@function				player_check_object_collisions();
//@description			Checks the player collisions and reduces the speed or cancels it entirely if there is any collisions
function player_check_object_collisions() {
	//I have this function so that I can implement my own "bonking" or restitution to the player and do damage.
	//This does not handle much else other than that since the collisions between objects is handled by GMS2.
	//X+Y Collisions
	var _clear = !physics_test_overlap(x+phy_speed_x,y+phy_speed_y,phy_rotation,obj_collision);
	
	_loops = 0;
	while (!_clear) {
		if !floaty {
			hs*=.6;
			vs*=.6;
		}
		_loops++;
	
		if _loops > 12 {
			if !floaty {
				hs = 0;
				vs = 0;	
			} else {
				player_check_bonk();
				hs*=-.8;
				vs*=-.8;
			}
			_clear = true;
		}
	}
}

//@function				player_check_bonk();
//@description			Checks the player's speed and then does damage, creates particles, etc if appropriate
function player_check_bonk() {
	if invulnerability<=0 {
		if (abs(phy_speed_x)>max_float_speed-.4 || abs(phy_speed_y)>max_float_speed-.4) part_particles_create(player_fx,x,y,small_bonk_particle,3);
		if (abs(hs)>max_float_speed || abs(vs)>max_float_speed) {
			phy_speed_x*=.5;
			phy_speed_y*=.5;
			play_sound_single(snd_bonk);
			part_particles_create(player_fx,x,y,bonk_particle,6)
			player_hurt(1);
		}
	}
}

//@function				player_hurt();
//@description			Does Damage to the player and makes them invulnerable for a period of time.
function player_hurt(dmg) {
	if invulnerability<=0 {
		part_particles_create(player_fx,x,y,glass_shatter,2);
		play_sound_single(snd_player_voice);
		hp-=dmg;
		invulnerability = 120;
	}
}

//@function				player_check_health();
//@description			Checks the players health and determines if they lose or not
function player_check_health() {
	if hp<=0 && !instance_exists(obj_slash) {
		give_score(-1000);
		instance_create_layer(x,y,"GUI",obj_slash);
		play_sound(snd_helmet_break);
		part_particles_create(player_fx,x,y,glass_shatter,irandom_range(32,70));
	} else if invulnerability>0 {
		invulnerability--;
	}
}

//@function				player_init_particles();
//@description			Creates the player's particles
function player_init_particles() {
	var _bgui = layer_get_id("BGUI");
	player_fx = part_system_create_layer(_bgui,false);	//Create a particle system

	jetpack_smoke = part_type_create();					//Sputters of smoke because it uses fire
	part_type_sprite(jetpack_smoke,spr_fx_smoke,true,false,true);
	part_type_life(jetpack_smoke,16,20);
	part_type_size(jetpack_smoke,.5,1.5,-.02,.01);
	part_type_alpha3(jetpack_smoke,.9,1,.7);

	jetpack_puff = part_type_create();					//Trail behind the player as they move
	part_type_sprite(jetpack_puff,spr_fx_poof,false,false,true);
	part_type_life(jetpack_puff,30,64);
	part_type_size(jetpack_puff,.8,1.2,-.005,0);
	part_type_alpha3(jetpack_puff,.9,1,.3);
	part_type_orientation(jetpack_puff,-360,360,0,.1,true);

	bonk_particle = part_type_create();					//Stars left behind when the player bonks
	part_type_sprite(bonk_particle,spr_fx_stars,false,false,true);
	part_type_life(bonk_particle,20,50);
	part_type_size(bonk_particle,.8,2.8,-.01,.1);
	part_type_alpha3(bonk_particle,1,1,0);
	part_type_orientation(bonk_particle,-360,360,0,.1,false);
	part_type_direction(bonk_particle,-360,360,0,0);
	part_type_speed(bonk_particle,0.4,3,-.02,0);
	
	small_bonk_particle = part_type_create();			//Stars left behind when the player bonks without taking damage
	part_type_sprite(small_bonk_particle,spr_fx_stars,false,false,true);
	part_type_life(small_bonk_particle,20,50);
	part_type_size(small_bonk_particle,.8,1,-.02,0);
	part_type_alpha3(small_bonk_particle,1,1,0);
	part_type_orientation(small_bonk_particle,-360,360,0,.1,false);
	part_type_direction(small_bonk_particle,-360,360,0,0);
	part_type_speed(small_bonk_particle,0.4,1.2,-.02,0);
	
	glass_shatter = part_type_create();					//Broken glass when the player's helmet breaks.
	part_type_sprite(glass_shatter,spr_fx_glass_chunks,false,false,true);
	part_type_life(glass_shatter,20,50);
	part_type_size(glass_shatter,1,2,0,0);
	part_type_orientation(glass_shatter,-360,360,0,.1,false);
	part_type_direction(glass_shatter,-360,360,0,0);
	part_type_speed(glass_shatter,0.6,1.4,-.02,0);
}