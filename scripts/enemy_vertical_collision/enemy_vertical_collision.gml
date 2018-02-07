current_mario = argument[0];
enemy_hit = argument[1];

if (enemy_hit != noone) {
	if (current_mario.y < enemy_hit.y) { // Kill enemy if Mario stomps from above
		with (enemy_hit) {
			audio_play_sound(stomp, 0, false);
			instance_destroy();
		}
	}
	else { // Mario loses a state
		with (current_mario) {
			state = states.dead;
		}
	}
}