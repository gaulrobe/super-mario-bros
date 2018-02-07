/// @description

event_inherited();

enum states {
	dead,
	small,
	super,
	fire,
	invincible
}

state = states.small;

jump_sound = sound_jump_small;
mario_sprite = sprite_mario;
mario_running_sprite = sprite_mario_running;

death_sound = false;