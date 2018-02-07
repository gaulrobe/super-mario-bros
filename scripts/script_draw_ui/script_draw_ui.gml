label = argument[0];
value = argument[1];
x_position = argument[2];
y_position = argument[3];

var cx = camera_get_view_x(view_camera[0]);
var cy = camera_get_view_y(view_camera[0]);
var cw = camera_get_view_width(view_camera[0]);

draw_set_font(font_ui);
draw_set_color(c_white);
draw_text(cx + x_position, cy + y_position, string(label));
draw_text(cx + x_position, cy + y_position + 14, string(value));