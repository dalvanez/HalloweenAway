/// @description Type Text onto Screen
if (text_index<string_length(speaker_text)) {
	text_index+=1;
	display_text = string_copy(speaker_text,0,text_index);
	play_sound_single(speaker_voice);
	alarm[1] = text_speed;
} else {
	alarm[1] = -1;
}