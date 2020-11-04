/// @description Init
randomize();
global.forcenocontrols = false;	//Whether or not to prevent the player from moving.
global.transition = false;		//Whether or not there is a room transition happening.
global.music = noone;			//Current song that is playing
global.checkpoint = room;		//The last checkpoint
global.p_fx = noone;			//Particle Effects System for everything
time_spent = 0;					//How long this run lasted
candy_total = 0;				//How much candy the player encountered
candy_collected = 0;			//How much candy the player picked up