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

jump_sound = jump_small;
mario_sprite = mario;
mario_running_sprite = mario_running;

death_sound = false;
just_got_hit = false;