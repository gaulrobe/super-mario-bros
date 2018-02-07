object_doing_colliding = argument[0];
object_colliding_into = argument[1];

if (instance_exists(object_doing_colliding) and instance_exists(object_colliding_into)) {
	// Vertical collision
	if (place_meeting(object_doing_colliding.x, object_doing_colliding.y + object_doing_colliding.vsp, object_colliding_into)) {
		while (!place_meeting(object_doing_colliding.x, object_doing_colliding.y + sign(object_doing_colliding.vsp), object_colliding_into)) {
			object_doing_colliding.y += sign(object_doing_colliding.vsp);	
		}
	
		var object_colliding_into_instance = instance_place(object_doing_colliding.x, object_doing_colliding.y + sign(object_doing_colliding.vsp), object_colliding_into);
	
		if (argument_count > 2 and argument[2]) {
			vertical_collision_script = argument[2];
			script_execute(vertical_collision_script, object_doing_colliding, object_colliding_into_instance);
		}
	
		object_doing_colliding.vsp = 0;
	}
}

if (instance_exists(object_doing_colliding) and instance_exists(object_colliding_into)) {
	// Horizontal collision
	if (place_meeting(object_doing_colliding.x + object_doing_colliding.hsp, object_doing_colliding.y, object_colliding_into)) {
		while (!place_meeting(object_doing_colliding.x + sign(hsp), object_doing_colliding.y, object_colliding_into)) {
			object_doing_colliding.x += sign(object_doing_colliding.hsp);
		}
	
		var object_colliding_into_instance = instance_place(object_doing_colliding.x + sign(object_doing_colliding.hsp), object_doing_colliding.y, object_colliding_into);
	
		if (argument_count > 3 and argument[3]) {
			horizontal_collision_script = argument[3];
			script_execute(horizontal_collision_script, object_doing_colliding, object_colliding_into_instance);
		}
	
		object_doing_colliding.hsp = 0;
	}	
}