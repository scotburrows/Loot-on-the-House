/// @description Insert description here
// You can write your code in this editor
// Flashlight
vision_cone = 30;
x1 = player.x + 1000 * cos(degtorad(angle - vision_cone));
x2 = player.x + 1000 * cos(degtorad(angle + vision_cone));
y1 = player.y + 1000 * sin(degtorad(angle - vision_cone));
y2 = player.y + 1000 * sin(degtorad(angle + vision_cone));

if (global.darkness) {
	var screen = surface_create(room_width, room_height)
	surface_set_target(screen);
	draw_clear(c_black);

	// Light circle around player & flashlight beam 
	gpu_set_blendmode(bm_subtract);
	draw_circle(player.x, player.y, 80, false);
	
	if (player.flashlight and player.has_flashlight) draw_triangle(player.x, player.y, x1, y1, x2, y2, false);

	/*if (true or player.has_flashlight) {
		if (player.sprite_index == spr_player_down) draw_triangle(player.x, player.y, player.x - vision_cone * 1.5, player.y + 1000, player.x + vision_cone * 1.5, player.y + 1000, false);
		else if (player.sprite_index == spr_player_up) draw_triangle(player.x, player.y, player.x - vision_cone * 1.5, player.y - 1000, player.x + vision_cone * 1.5, player.y - 1000, false);
		else if (player.sprite_index == spr_player_side) {
			if (player.image_xscale < 0) draw_triangle(player.x, player.y, player.x + 1000, player.y - vision_cone, player.x + 1000, player.y + vision_cone, false);
			else draw_triangle(player.x, player.y, player.x - 1000, player.y - vision_cone, player.x - 1000, player.y + vision_cone, false);
		}
	}*/

	gpu_set_blendmode(bm_normal);
	surface_reset_target();
	draw_set_alpha(0.97);
	draw_surface(screen, 0, 0);
	surface_free(screen);
	draw_set_alpha(1);
}
else if (player.flashlight and player.has_flashlight) {
	draw_set_alpha(0.1);
	draw_set_color(c_white);
	draw_triangle(player.x, player.y, x1, y1, x2, y2, false);
	draw_set_alpha(1);
}