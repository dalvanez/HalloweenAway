//@function				play_sound();
//@description			Plays the sound specified.
function play_sound(snd) {
	audio_play_sound(snd,10,false);
}

//@function				play_sound_single();
//@description			Plays the sound specified if it's not playing already.
function play_sound_single(snd) {
	if (!audio_is_playing(snd)) audio_play_sound(snd,10,false);
}

//@function				play_music();
//@description			Plays the sound specified if it's not playing already.
function play_music(mus) {
	if (audio_is_playing(global.music)) audio_stop_sound(global.music);
	if (!audio_is_playing(mus)) global.music = audio_play_sound(mus,10,true);
}