/// @description Pop and advance
if !ds_queue_empty(dialog) {
	for (var i = 0; i < 2; i++) {
		var pop = ds_queue_dequeue(dialog);
		if (typeof(pop)=="string") {
			if (string_copy(pop,0,6)=="_name_") speaker_name = string_copy(pop,7,string_length(pop)-6);	//Set the speaker name.
			if (string_copy(pop,0,5)=="_end_") {
				i = 4;
				alarm[2] = 1;	//End the Cutscene
			} else speaker_text = pop;
		}
	}
}
key_moment+=1;
alarm[0] = -1;