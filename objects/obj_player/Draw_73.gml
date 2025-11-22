/// @description Overlays
// You can write your code in this editor

// Room Switch fadeout
draw_set_alpha(overlay_alpha);
draw_set_color(c_black);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

// Pause
if (global.paused) {
	draw_set_alpha(0.3);
	draw_set_color(c_black);
	draw_rectangle(0, 0, room_width, room_height, false);
	draw_set_alpha(1);
}