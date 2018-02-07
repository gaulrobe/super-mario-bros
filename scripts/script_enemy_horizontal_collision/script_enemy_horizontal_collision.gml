mario = argument[0];
enemy = argument[1];

if (enemy != noone) {
	mario.state = states.dead;
	//mario.state = clamp(mario.state--, states.dead, states.invincible);
}