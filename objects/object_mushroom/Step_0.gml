/// @description 

hsp = spd / 3;
vsp = vsp + grav;

// Collisions
script_register_tilemap_collision(self, collision_tilemap);
script_register_collision(self, object_base);

x += hsp;
y += vsp;