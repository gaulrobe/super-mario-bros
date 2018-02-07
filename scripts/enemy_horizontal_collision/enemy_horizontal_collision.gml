current_mario = argument[0];
enemy_hit = argument[1];

if (enemy_hit != noone) {
	current_mario.state = states.dead;
}