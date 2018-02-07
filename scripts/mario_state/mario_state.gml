current_mario = argument[0];

switch (current_mario.state) {
	case states.super:
		current_mario.mario_sprite = super_mario;
		current_mario.mario_running_sprite = super_mario_running;
		current_mario.jump_sound = jump_super;
}