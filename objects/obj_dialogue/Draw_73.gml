/// @description Text display
// You can write your code in this editor
if (!obj_player.can_move) {
	draw_set_color(#060606);
	draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + 960, camera_get_view_y(view_camera[0]) + 100, false);

	draw_set_color(c_white);
	draw_set_font(fnt_trebuchet);
	draw_text_transformed(camera_get_view_x(view_camera[0]) + 30, camera_get_view_y(view_camera[0]) + 20, current_string, 0.2, 0.2, 0);

	if (!drawing and flicker) {
		draw_triangle(camera_get_view_x(view_camera[0]) + 925, camera_get_view_y(view_camera[0]) + 85, camera_get_view_x(view_camera[0]) + 910, camera_get_view_y(view_camera[0]) + 65, camera_get_view_x(view_camera[0]) + 940, camera_get_view_y(view_camera[0]) + 65, false);
	}
}