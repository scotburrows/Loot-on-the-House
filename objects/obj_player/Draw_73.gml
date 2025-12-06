/// @description Overlays
// You can write your code in this editor

// Room Switch fadeout
draw_set_alpha(overlay_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

if (room == rm_shop and !instance_exists(obj_dialogue)) {
	draw_set_color(c_white);
	draw_set_font(fnt_trebuchet);
	draw_text_transformed(camera_get_view_x(view_camera[0]) + 10, camera_get_view_y(view_camera[0]) + 10, "Money: $" + string(global.money), 0.25, 0.25, 0);
}