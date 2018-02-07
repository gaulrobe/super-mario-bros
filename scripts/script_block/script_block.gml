mario = argument[0];
block = argument[1];

if (block != noone) {
	if (mario.y > block.y) { // Only if Mario hits block from below
		with (block) {
			audio_play_sound(sound_block, 0, false);
			instance_destroy();
		}
	}
}

