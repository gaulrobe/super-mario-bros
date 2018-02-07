current_mario = argument[0];
question_block_hit = argument[1];

if (question_block_hit != noone) {
	if (current_mario.y > question_block_hit.y) { // Only if Mario hits block from below
		with (question_block_hit) {
			if (!done) {
				sprite_index = question_block_opened;
				instance_create_layer(x, y - 16, "PlayerLayer", mushroom_pickup);
				audio_play_sound(powerup_appears, 0, false);
			}

			done = true;
		}
	}
}

