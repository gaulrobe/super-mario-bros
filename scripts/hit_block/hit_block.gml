current_mario = argument[0];
block_hit = argument[1];

if (block_hit != noone) {
	// Only if Mario hits block from below and isn't small mario
	if (current_mario.state > states.small and (current_mario.y > block_hit.y)) {
		with (block_hit) {
			audio_play_sound(block_break, 0, false);
			instance_destroy();
		}
	}
}

