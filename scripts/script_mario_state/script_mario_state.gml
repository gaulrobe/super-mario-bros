mario = argument[0];

switch (mario.state) {
	case states.super:
		mario.mario_sprite = sprite_super_mario;
		mario.mario_running_sprite = sprite_super_mario_running;
		mario.jump_sound = sound_jump_super;
}