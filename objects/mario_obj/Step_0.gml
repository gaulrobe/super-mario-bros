/// @description

// Variables
var bounding_box_side;

key_right = keyboard_check(vk_right);
key_left = keyboard_check(vk_left);
key_jump = keyboard_check_pressed(vk_space);

// Movement
hsp = (key_right - key_left) * spd;

on_floor = false;
if (vsp == 0) {
	on_floor = true;	
}

vsp = vsp + grav;

debug_text(state);

if (state == states.dead) {
	if (!death_sound) {
		audio_play_sound(mario_dies, 0, false);
		death_sound = true;
	}
	sprite_index = mario_dead;
}
else {
	// State management
	mario_state(self);

	// Handle jumping
	if (on_floor and key_jump) {
		audio_play_sound(jump_sound, 0, false);
		vsp = -11;
	}

	// Set sprite animation
	if (on_floor) {
		if (hsp == 0) {
			sprite_index = mario_sprite;	
		}
		else {
			image_xscale = sign(hsp);
			sprite_index = mario_running_sprite;
		}
	}

	// Collisions
	register_tilemap_collision(self, collision_tilemap);
	register_collision(self, object_only_collision);
	register_collision(self, question_block_coin, question_block_coin_vertical_collision);
	register_collision(self, question_block_mushroom, question_block_mushroom_vertical_collision);
	register_collision(self, brick_block, hit_block);
	register_collision(self, enemy_base, enemy_vertical_collision, enemy_horizontal_collision);
}

// Where should sprite be now?
x += hsp;
y += vsp;
