/// @description Init
phy_fixed_rotation = true;
global.checkpoint = room;
image_index = costume;	//Sets the character's image index to the costume being worn... or lack thereof.
image_speed = 0;

//Variables
invulnerability = 0;	//How long this player is invulnerable for
hs = 0;					//Horizontal Speed
vs = 0;					//Vertical Speed
walk_cycle = 0;			//Input for Trig functions to animate the player walking
walk_cycle_speed = 15;	//Speed of the walk cycle

//Collisions
var _colayer = layer_get_id("Collisions");
collisions = layer_tilemap_get_id(_colayer);
layer_set_visible(_colayer, false);

//Create Camera
view_camera[0] = camera_create_view(x-128,y-96,320,180,0,id,24,24,128,96);
view_set_visible(0,true);

//Particles
player_init_particles();