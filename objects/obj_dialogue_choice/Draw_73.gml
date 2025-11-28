/// @description Insert description here
// You can write your code in this editor
draw_set_color(#060606);
draw_rectangle(camera_get_view_x(view_camera[0]) + 700, camera_get_view_y(view_camera[0]) + 135, camera_get_view_x(view_camera[0]) + 960, camera_get_view_y(view_camera[0]) + 250, false);

draw_set_color(c_white);
draw_set_font(fnt_trebuchet);
draw_set_halign(fa_right);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 945, camera_get_view_y(view_camera[0]) + 150, choice1, 0.2, 0.2, 0);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 945, camera_get_view_y(view_camera[0]) + 200, choice2, 0.2, 0.2, 0);
draw_set_halign(fa_left);

if (flicker) {
	draw_triangle(camera_get_view_x(view_camera[0]) + 960 - x_offset, camera_get_view_y(view_camera[0]) + 175 + y_offset, camera_get_view_x(view_camera[0]) + 940 - x_offset, camera_get_view_y(view_camera[0]) + 185 + y_offset, camera_get_view_x(view_camera[0]) + 940 - x_offset, camera_get_view_y(view_camera[0]) + 165 + y_offset, false);
}