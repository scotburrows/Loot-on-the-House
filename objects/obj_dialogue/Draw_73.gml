/// @description Text display
// You can write your code in this editor
if (!obj_player.can_move) {
	draw_set_color(#060606);
	draw_rectangle(camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0]), camera_get_view_x(view_camera[0]) + 1920, camera_get_view_y(view_camera[0]) + 200, false);

	draw_set_color(c_white);
	draw_set_font(fnt_trebuchet);
	draw_text_transformed(camera_get_view_x(view_camera[0]) + 60, camera_get_view_y(view_camera[0]) + 40, current_string, 0.35, 0.35, 0);

	if (!drawing and flicker) {
		draw_triangle(camera_get_view_x(view_camera[0]) + 1850, camera_get_view_y(view_camera[0]) + 170, camera_get_view_x(view_camera[0]) + 1820, camera_get_view_y(view_camera[0]) + 130, camera_get_view_x(view_camera[0]) + 1880, camera_get_view_y(view_camera[0]) + 130, false);
	}
}