mario = argument[0];
question_block = argument[1];

if (question_block != noone) {
	if (mario.y > question_block.y) { // Only if Mario hits block from below
		with (question_block) {
			if (!done) {
				sprite_index = sprite_question_block_opened;
				instance_create_layer(x, y - 16, "PlayerLayer", object_mushroom);
				audio_play_sound(sound_powerup_appears, 0, false);
			}

			done = true;
		}
	}
}

