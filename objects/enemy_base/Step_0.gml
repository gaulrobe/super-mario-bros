/// @description

vsp = vsp + grav;

enemy_move_when_in_view(self);

// Collision
register_tilemap_collision(self, collision_tilemap);

x += hsp;
y += vsp;