//@function				find_actor();
//@description			Finds the first actor with the specified name and returns its ID.
function find_actor(name){
	var _num = instance_number(obj_actor);
	for (var i = 0; i < _num; i++) {
		var _trigger = instance_find(obj_actor,i);
		if (_trigger.actor_name==name) {
			return _trigger;	//Return the actor with the correct name
		}
	}
	return noone;	//Failed to find a actor with the name provided.
}

//@function				cutscene_update();
//@description			Checks the current cutscene and then runs the script for the cutscene.
function cutscene_update(cs) {
	switch(cs) {
		case cutscene.intospace:
			cutscene_update_intospace();
			break;
		case cutscene.scarymonster:
			cutscene_update_scarymonster();
			break;
		default:
			break;
	}
}

//@function				queue_cutscene_texts();
//@description			Checks the current cutscene and then queues the appropriate text
function queue_cutscene_texts(cs,queue){
	switch(cs) {
		case cutscene.intro:
			ds_queue_enqueue(queue,"_name_Me","Trick or treat!");
			ds_queue_enqueue(queue,"_name_Neighbor","What?");
			ds_queue_enqueue(queue,"_name_Me","Trick or treat.");
			ds_queue_enqueue(queue,"_name_Neighbor","Halloween's over, kid.");
			ds_queue_enqueue(queue,"_name_Me","Hm?");
			ds_queue_enqueue(queue,"_name_Neighbor","It's November 3rd.");
			ds_queue_enqueue(queue,"_name_Me","Oh no.");
			ds_queue_enqueue(queue,"_name_Me","So, uh, yeah... due to current events, I missed Halloween.\nIt's a bit strange of a story, but just hear me out.");
			ds_queue_enqueue(queue,"_name_Me","It all started when I woke up late Halloween night...");
			ds_queue_enqueue(queue,"_end_");
			break;
		
		case cutscene.trickortreat:
			ds_queue_enqueue(queue,"_name_Me","Trick or treat!");
			ds_queue_enqueue(queue,"_name_Neighbor","Nice costume! Looks real.");
			ds_queue_enqueue(queue,"_name_Me","Heh, thanks.");
			ds_queue_enqueue(queue,"_name_Neighbor","I wasn't expecting anymore of you kids this late,\nbut it's good I kept the bowl prepared.");
			ds_queue_enqueue(queue,"_name_Neighbor","Now you be sure to head home before the real creeps come out!");
			ds_queue_enqueue(queue,"_name_Me","Alright, will do.");
			ds_queue_enqueue(queue,"_name_Me","(Dang, I only got to go to ONE house?)");
			ds_queue_enqueue(queue,"_name_Me","(Oh well, I might as well take what I can get and head home.)");
			ds_queue_enqueue(queue,"_end_");
			break;
			
		case cutscene.intospace:
			ds_queue_enqueue(queue,"_name_Mean Kid","They're here!");
			ds_queue_enqueue(queue,"_name_Dumb Kid","Let's let it loose!");
			ds_queue_enqueue(queue,"_name_Mean Kid","HAHA IDIOT!");
			ds_queue_enqueue(queue,"_name_Me","??!");
			ds_queue_enqueue(queue,"_name_Mean Kid","GET FREAKING TRICKED YOU STUPID FACE! HAAAAA!!!");
			ds_queue_enqueue(queue,"_name_Me","Fireworks?! That's illegal in this state!");
			ds_queue_enqueue(queue,"_name_Me","!?");
			ds_queue_enqueue(queue,"_name_Me","Oh no!!");
			ds_queue_enqueue(queue,"_name_Dumb Kid","I think we sent 'em to space.");
			ds_queue_enqueue(queue,"_name_Mean Kid","Heh.\nServes 'em right.");
			ds_queue_enqueue(queue,"_end_");
			break;
			
		case cutscene.scarymonster:
			ds_queue_enqueue(queue,"_name_Astronaut","This is Brittrander to Control, anything new?");				//1
			ds_queue_enqueue(queue,"_name_CP","*KRRT* Nah, nothing new except that it's Halloween night\nand kids all over are making a ruckus--");
			ds_queue_enqueue(queue,"_name_CP","WAIT IS THAT A UFO?");
			ds_queue_enqueue(queue,"_name_Astronaut","UFO? Are you playing pranks, Control?");
			ds_queue_enqueue(queue,"_name_CP","OH DEAR LORD IT'S HEADED FOR THE STATION!");							//5
			ds_queue_enqueue(queue,"_name_Astronaut","Wait what?");
			ds_queue_enqueue(queue,"_name_SFX","*BOOM*");	//7
			ds_queue_enqueue(queue,"_name_Astronaut","... Control?");
			ds_queue_enqueue(queue,"_name_CP","*Kzzrt*");	//9
			ds_queue_enqueue(queue,"_name_Astronaut","Why do I always get the crummy shifts with aliens...");		//10
			ds_queue_enqueue(queue,"_name_SFX","*Ka-thunk*");	//11
			ds_queue_enqueue(queue,"_name_Astronaut","... was that another one?");
			ds_queue_enqueue(queue,"_name_Me","Ow.");
			ds_queue_enqueue(queue,"_name_Me","... hi?");
			ds_queue_enqueue(queue,"_name_Astronaut","Another astronaut? What country are you from?");				//15
			ds_queue_enqueue(queue,"_name_Me","The one with the states or something...\ncan you lend a hand?");
			ds_queue_enqueue(queue,"_name_Astronaut","Yeah, sure.\nAlways willing to help a fellow 'naut in need!");
			ds_queue_enqueue(queue,"_name_SFX","*WHOOP WHOOP*");	//18
			ds_queue_enqueue(queue,"_name_Intercom","Hey guys there's a monster on the ship.");
			ds_queue_enqueue(queue,"_name_Intercom","It's pretty wicked and stuff. I think you should--\nOOHG!");	//20
			ds_queue_enqueue(queue,"_name_Intercom","Stop that! That hurts!");
			ds_queue_enqueue(queue,"_name_Intercom","That's my leg!");
			ds_queue_enqueue(queue,"_name_Intercom","That's my other leg!\nYou didn't even finish the first one!");
			ds_queue_enqueue(queue,"_name_Intercom","Stop!--");
			ds_queue_enqueue(queue,"_name_Intercom","*Kzzrt*");														//25
			ds_queue_enqueue(queue,"_name_Astronaut","That can't be good.\nI think we should split up and check it out.");
			ds_queue_enqueue(queue,"_name_Astronaut","That a firework strapped to your EPP?\nI guess your country doesn't provide you with much\nfunding...");
			ds_queue_enqueue(queue,"_name_Astronaut","Whatever works, works, I guess.");
			ds_queue_enqueue(queue,"_name_Astronaut","Let's find out what this thing is and get rid of it.\nLike in the movies!");
			ds_queue_enqueue(queue,"_name_Me","... I don't think I have much of a choice.");						//30
			ds_queue_enqueue(queue,"_name_Me","(I'm not even a real astronaut!)");
			ds_queue_enqueue(queue,"_name_Me","(This sucks. I think I'll just look for an escape pod or\nsomething.)");
			ds_queue_enqueue(queue,"_name_Me","(And if they've got candy, I'm taking that too.)");					//33
			ds_queue_enqueue(queue,"_end_");
			break;
			
		case cutscene.goinghome:
			ds_queue_enqueue(queue,"_name_Me","An escape pod!\nLet's get out of here!");	
			ds_queue_enqueue(queue,"_name_Me","Uh... I think this is the right trajectory?");	
			ds_queue_enqueue(queue,"_name_Me","Let's go!");	
			ds_queue_enqueue(queue,"_name_Me","... the firework.");	
			ds_queue_enqueue(queue,"_name_SFX","*BOOOOOM*");	
			ds_queue_enqueue(queue,"_name_Me","!!!!");
			ds_queue_enqueue(queue,"_name_Me","...");
			ds_queue_enqueue(queue,"_name_Me","...");
			ds_queue_enqueue(queue,"_name_SFX","*CRASH*");
			ds_queue_enqueue(queue,"_name_Me","That wasn't the cleanest landing ever...");	
			ds_queue_enqueue(queue,"_name_Me","But it's still Halloween night and I want some candy.");	
			ds_queue_enqueue(queue,"_name_Me","I think I can handle the creeps or whatever now that I\nmanaged a space monster...");	
			ds_queue_enqueue(queue,"_end_");
			break;
			
		case cutscene.november:
			ds_queue_enqueue(queue,"_name_Me","Trick or treat!");				//4
			ds_queue_enqueue(queue,"_name_Neighbor","What?");
			ds_queue_enqueue(queue,"_name_Me","Trick or treat.");
			ds_queue_enqueue(queue,"_name_Neighbor","Halloween's over, kid.");
			ds_queue_enqueue(queue,"_name_Me","Hm?");
			ds_queue_enqueue(queue,"_name_Neighbor","It's November 3rd.");
			ds_queue_enqueue(queue,"_name_Me","Oh no.");						//10
			ds_queue_enqueue(queue,"_name_Me","So yeah, that's what happened.\nI missed Halloween because I was sent to space.");	//11
			ds_queue_enqueue(queue,"_name_Me","And of course I also was chased by some scary\nalien thing...");	//11
			ds_queue_enqueue(queue,"_name_Me","So uh, that's it.");	//11
			ds_queue_enqueue(queue,"_name_Me","Remember to stay safe on Halloween night?");	//11
			ds_queue_enqueue(queue,"_end_");
			break;
			
		case cutscene.credits:
			ds_queue_enqueue(queue,"_name_Credits","Music:\nDark Ambience Loop by Iwan Gabovitch\nDelusion by Alexandr Zhelanov\nSpace Atmosphere by Alexandr Zhelanov");	
			ds_queue_enqueue(queue,"_name_Credits","SFX:\nBottle Break by spookymodem\nImpact by Iwan 'qubodup' Gabovitch\nPickup/plastic Sound by Vinrax");	
			ds_queue_enqueue(queue,"_name_Credits","SFX:\nFunny Comic Cartoon Bounce Sound by Blender Foundation\nWood and Metal Sound Effects: Volume 2 by Ogrebane");	
			ds_queue_enqueue(queue,"_name_Credits","SFX:\nElectronic device loop by qubodup\niron door by forseti1121");	
			ds_queue_enqueue(queue,"_name_Credits","Note:\nFull Links in Credits.txt");	
			ds_queue_enqueue(queue,"_name_Credits","Programming:\nDarius Alvanez");	
			ds_queue_enqueue(queue,"_name_Credits","Good Vibes:\nYou");	
			ds_queue_enqueue(queue,"_name_Credits","Stats:\nTotal Score - "+get_total_score()+"\nTime Spent - "+get_time_spent()+"\nCandy Collected - "+get_candy_collected()+".");	
			ds_queue_enqueue(queue,"_name_END","Thanks for playing!\n\nMade in 1 Day, 2 hours.");	
			ds_queue_enqueue(queue,"_end_");
			break;
	}
}