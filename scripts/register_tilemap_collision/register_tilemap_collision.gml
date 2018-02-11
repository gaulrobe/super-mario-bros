object_doing_colliding = argument[0];
collision_tilemap = argument[1];

// Vertical collision
if (object_doing_colliding.vsp >= 0) {
	bounding_box_side = object_doing_colliding.bbox_bottom;
}
else {
	bounding_box_side = object_doing_colliding.bbox_top;	
}

if (tilemap_get_at_pixel(collision_tilemap, object_doing_colliding.bbox_left, bounding_box_side + round(object_doing_colliding.vsp)) > 0 || tilemap_get_at_pixel(collision_tilemap, object_doing_colliding.bbox_right, bounding_box_side + round(object_doing_colliding.vsp) > 0)) {
	if (object_doing_colliding.vsp > 0) {
		object_doing_colliding.y = object_doing_colliding.y - (object_doing_colliding.y % 16) + 15 - (object_doing_colliding.bbox_bottom - object_doing_colliding.y);
	}
	else {
		object_doing_colliding.y = object_doing_colliding.y - (object_doing_colliding.y % 16) - (object_doing_colliding.bbox_top - object_doing_colliding.y);	
	}
	object_doing_colliding.vsp = 0;
}

// Horizontal collision
if (object_doing_colliding.hsp > 0) {
	bounding_box_side = object_doing_colliding.bbox_right;
}
else {
	bounding_box_side = object_doing_colliding.bbox_left;
}

if (tilemap_get_at_pixel(collision_tilemap, bounding_box_side + object_doing_colliding.hsp, object_doing_colliding.bbox_top) != 0 || tilemap_get_at_pixel(collision_tilemap, bounding_box_side + object_doing_colliding.hsp, object_doing_colliding.bbox_bottom) != 0) {
	if (object_doing_colliding.hsp > 0) {
		object_doing_colliding.x = object_doing_colliding.x - (object_doing_colliding.x % 16) + 15 - (object_doing_colliding.bbox_right - object_doing_colliding.x);	
	}
	else {
		object_doing_colliding.x = object_doing_colliding.x - (object_doing_colliding.x % 16) - (object_doing_colliding.bbox_left - object_doing_colliding.x);	
	}
	
	if (object_is_ancestor(object_index, enemy_base)) {  // If an ememy has collided, switch directions
		object_doing_colliding.hsp = object_doing_colliding.hsp * -1;
	}
	else {
		object_doing_colliding.hsp = 0;
	}
}