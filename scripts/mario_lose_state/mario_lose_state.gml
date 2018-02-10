current_mario = argument[0];

switch (current_mario.state) {
	case states.small:
		current_mario.state = states.dead;
		break;
	case states.super:
		current_mario.state = states.small;
		break;
}