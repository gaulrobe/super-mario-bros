current_mario = argument[0];
enemy_hit = argument[1];

if (enemy_hit != noone) {
	mario_y = round(current_mario.y);
	enemy_y = round(enemy_hit.y);
	
	if (mario_y < enemy_y) { // Kill enemy if Mario stomps from above
		with (enemy_hit) {
			audio_play_sound(stomp, 0, false);
			instance_destroy();
		}
	}
	else if (mario_y > enemy_y) { // Mario loses a state
		with (current_mario) {
			mario_lose_state(self);
		}
	}
}