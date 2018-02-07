/// @description 

hsp = spd / 3;
vsp = vsp + grav;

// Collisions
register_tilemap_collision(self, collision_tilemap);
register_collision(self, object_base);

x += hsp;
y += vsp;