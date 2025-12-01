/// @description Draw clock
// You can write your code in this editor
if ((!instance_exists(obj_dialogue) or obj_dialogue.alarm[2] != -1) and flicker) {
	x = camera_get_view_x(view_camera[0]) + 80;
	y = camera_get_view_y(view_camera[0]) + 87;
	draw_set_color(c_black);
	draw_circle(x, y, 75, false);
	draw_set_color(current_color);
	draw_circle(x, y, 70, false);
	draw_set_color(c_black);
	draw_line_width(x, y, x + 75 * sin(degtorad((global.time_remaining / 60) + 180)), y + 75 * cos(degtorad((global.time_remaining / 60) + 180)), 5);
	draw_circle(x, y, 5, false);
	draw_rectangle(x - 10, y - 70, x + 10, y - 82, false);
}

// Game over fadeout
if (game_over) {
	obj_player.can_move = false;
	draw_set_color(c_black);
	draw_set_alpha((overlay_alpha++) / 200);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
	if (overlay_alpha >= 200) {
		room_goto(rm_gameover);
	}
}