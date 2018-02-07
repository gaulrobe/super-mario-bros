/// @description

hsp = spd / 5;
vsp = vsp + grav;

// Collision
register_tilemap_collision(self, collision_tilemap);

x -= hsp;
y += vsp;