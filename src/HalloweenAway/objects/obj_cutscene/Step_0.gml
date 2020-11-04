/// @description Type Text and Wait for Input
if key_moment!=-4 && text_index>=string_length(speaker_text) && (keyboard_check_pressed(vk_enter) || mouse_check_button_pressed(mb_left)) {
	alarm[0] = 1;
	alarm[1] = text_speed;
	text_index = 0;
}
cutscene_update(scene);