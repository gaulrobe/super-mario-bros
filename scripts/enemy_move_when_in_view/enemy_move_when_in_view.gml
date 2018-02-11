enemy_instance = argument[0];

main_camera = view_camera[0];

camera_x = camera_get_view_x(main_camera);
camera_y = camera_get_view_y(main_camera);
camera_width = camera_get_view_width(main_camera);
camera_height = camera_get_view_height(main_camera);

if (!enemy_instance.in_view and point_in_rectangle(x, y, camera_x, camera_y, camera_x + camera_width, camera_y + camera_height)) {
   enemy_instance.hsp = -(enemy_instance.spd / 5);
   enemy_instance.in_view = true;
}