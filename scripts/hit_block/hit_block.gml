current_mario = argument[0];
block_hit = argument[1];

if (block_hit != noone) {
	if (current_mario.y > block_hit.y) { // Only if Mario hits block from below
		with (block_hit) {
			audio_play_sound(block_break, 0, false);
			instance_destroy();
		}
	}
}

