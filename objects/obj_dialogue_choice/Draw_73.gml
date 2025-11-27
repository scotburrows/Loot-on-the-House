/// @description Insert description here
// You can write your code in this editor
draw_set_color(#060606);
draw_rectangle(camera_get_view_x(view_camera[0]) + 700, camera_get_view_y(view_camera[0]) + 125, camera_get_view_x(view_camera[0]) + 960, camera_get_view_y(view_camera[0]) + 250, false);

draw_set_color(c_white);
draw_set_font(fnt_trebuchet);
draw_set_halign(fa_right);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 945, camera_get_view_y(view_camera[0]) + 175, choice1, 0.2, 0.2, 0);
draw_text_transformed(camera_get_view_x(view_camera[0]) + 945, camera_get_view_y(view_camera[0]) + 225, choice2, 0.2, 0.2, 0);
draw_set_halign(fa_left);

if (flicker) {
	draw_triangle(camera_get_view_x(view_camera[0]) + 925, camera_get_view_y(view_camera[0]) + 85, camera_get_view_x(view_camera[0]) + 910, camera_get_view_y(view_camera[0]) + 65, camera_get_view_x(view_camera[0]) + 940, camera_get_view_y(view_camera[0]) + 65, false);
}