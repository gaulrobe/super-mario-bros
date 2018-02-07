mario = argument[0];
enemy = argument[1];

if (enemy != noone) {
	if (mario.y < enemy.y) { // Kill enemy if Mario stomps from above
		with (enemy) {
			audio_play_sound(sound_stomp, 0, false);
			instance_destroy();
		}
	}
	else { // Mario loses a state
		with (mario) {
			mario.state = clamp(mario.state--, states.dead, states.invincible);	
		}
	}
}