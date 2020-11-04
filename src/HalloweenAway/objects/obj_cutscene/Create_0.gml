/// @description Init
global.forcenocontrols = true;	//Set it so the player doesn't move during a scene.
dialog = ds_queue_create();		//Queue for all the dialog in the scene
speaker_name = "???";			//The name of the current speaker
speaker_text = "What up";		//The text that is currently being spoken
speaker_voice =	snd_talk;		//The sound effect played while the text is scrolling.
display_text = "";				//The actual text displayed in the textbox
text_index = 0;					//Current index of the text being spoken
key_moment = 1;					//Current key point in the cutscene
//scene = 0;					//The current cutscene we're in; use object variable definitions window

//All Cutscene IDs
enum cutscene {
	intro,					//Intro to story
	trickortreat,			//Trick Or Treating at the only house with the lights on
	intospace,				//Getting blasted into space as an over-the-top trick
	scarymonster,			//Finding out there's a candy-crazed monster on the space station
	goinghome,				//Finally finding an escape pod and going home
	november,				//Discovering it's November now
	credits					//Music and Audio credits for CC
}

queue_cutscene_texts(scene,dialog);		//Populate the Dialog Queue with the accompanying cutscene texts
alarm[0] = 1;							//Pop the first textbox contents
alarm[1] = text_speed+1;				//Start incrementing the index after the text is popped