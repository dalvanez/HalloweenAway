//scr_cutscene_update
/*Personally I know this isn't really the best way to animate the cutscenes, but I'm doing this since they're
not really supposed to be too intensive on the animations and also because I want it to respond to player input
kinda well (I want to try to avoid things teleporting around whenever possible). I'm sure you can use sequences
and broadcast messages to make a much better system (I did this in a beta build of my other game, Planet Hell)
and it looked clean, worked well, but it took a while to make and I wasn't too happy with it since everything
moved at the same pace which meant slow readers got lost and fast readers got bored.

Your call or whatever if you want to actually use this.*/

//@function				cutscene_update_intospace();
//@description			Updates the animations and actors for the intospace cutscene.
function cutscene_update_intospace(){
	var _player = find_actor("Player");
	var _firework = find_actor("Firework");
	var _stray = find_actor("Firework1");
	var _smoke = false;
	if (current_time%6==0) _smoke = true;
	switch(key_moment) {
		case 0:
		case 1:
			with (_player) image_index = 1;
			with _stray {
				if (_smoke) part_particles_create(global.p_fx,x,y+6,global.fx_smoke,1);
			}
			with _firework {
				if (_smoke) part_particles_create(global.p_fx,x,y+6,global.fx_smoke,1);
			}
			break;
		case 3:
		case 4:
		case 5:
			with _stray {
				hs = 1;
				vs-=.5;
				if (_smoke) part_particles_create(global.p_fx,x,y,global.fx_smoke,1);
				image_index = 1;
				image_angle+=2;
			}
			with _firework {
				x = start_x + cos(degtorad(interval))*16;
				y = start_y + sin(degtorad(interval))*16;
				
				if (interval<359) interval+=4;
				else			  interval-=360;
				
				image_angle = sin(degtorad(interval/2))*359;
				image_index = 1;
				if (_smoke) part_particles_create(global.p_fx,x,y,global.fx_smoke,1);
			}
			break;
		case 6:
		case 7:
		case 8:
			with _firework {
				hs = 0;
				vs = 0;
				if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,obj_player,false,true) {
					x = _player.x;
					y = _player.y+6;
					image_angle = 0;
				} else {
					x = start_x + cos(degtorad(interval))*14;
					y = start_y + sin(degtorad(interval))*14;
				
					if (interval<360) interval+=4;
					else			  interval-=360;
				
					image_angle = sin(degtorad(interval/2))*360;
					image_index = 1;
				}
				
				if (_smoke) part_particles_create(global.p_fx,x,y+6,global.fx_smoke,1);
			}
			break;
		case 9:
		case 10:
			with _firework {
				hs = 0;
				vs-=.2;
				if (_smoke) part_particles_create(global.p_fx,x,y,global.fx_smoke,1);
			}
			with _player {
				hs = 0;
				vs-=.2;
			}
			break;
	}
}

//@function				cutscene_update_scarymonster();
//@description			Updates the animations and actors for the scarymonster cutscene.
function cutscene_update_scarymonster() {
	var _player = find_actor("Player");
	var _firework = find_actor("Firework");
	var _astro = find_actor("Astronaut");
	
	with _astro {			//Spin the astronaut the whole cutscene
		image_angle+=.1;
	}
	
	switch(key_moment) {
		case 11:
		case 12:
		case 13:
		case 14:
		case 15:
		case 16:
		case 17:
		case 18:
			with _player {
				if (y > 180) vs-=.1;
				else  {
					vs = 0;
					y = 176;
					image_angle = 90;
				}
			}
			
			with _firework {
				if (y > 180) vs-=.1;
				else {
					vs = 0;
					y = 176;
					image_angle = 90;
				}
			}
			break;
		case 19:
			with _player {
				hs = 0;
				vs = 0;
				x = 382;
				y = 142;
				image_xscale = -1;
				image_angle = 0;
			}
			
			with _firework {
				hs = 0;
				vs = 0;
				x = 382;
				y = 142;
				image_angle = 0;
			}
			break;
		case 30:
		case 31:
		case 32:
		case 33:
			with _astro {
				hs = -.6;
				vs = -.7;
			}
			break;
	}
}