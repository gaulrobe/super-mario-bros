current_mario = argument[0];

current_mario.just_got_hit = true;
current_mario.alarm[0] = 60;

switch (current_mario.state) {
	case states.small:
		current_mario.state = states.dead;
		break;
	case states.super:
		current_mario.state = states.small;
		break;
}