current_mario = argument[0];

with (current_mario) {
	if (!death_sound) {
		audio_stop_sound(overworld);
		audio_play_sound(mario_dies, 0, false);
		death_sound = true;
	}
	sprite_index = mario_dead;
	y-=10;
}
