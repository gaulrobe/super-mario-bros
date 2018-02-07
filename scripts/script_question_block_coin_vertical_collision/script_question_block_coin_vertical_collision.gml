mario = argument[0];
question_block = argument[1];

if (question_block != noone) {
	if (mario.y > question_block.y) { // Only if Mario hits block from below
		with (question_block) {
			if (!done) {
				sprite_index = sprite_question_block_opened;
				instance_create_layer(x, y - 20, "PlayerLayer", object_coin);
				audio_play_sound(sound_coin, 0, false);
				object_controller.coins++;
			}

			done = true;
		}
	}
}

