/// @description Move back & forth in circular motion
// You can write your code in this editor

// Other vertices of triangle calc
x1 = x + radius * cos(degtorad(movement - (distance/2)));
x2 = x + radius * cos(degtorad(movement + (distance/2)));
y1 = y + radius * sin(degtorad(movement - (distance/2)));
y2 = y + radius * sin(degtorad(movement + (distance/2)));

movement += 0.2 * cam_dir;

// Move back and forth
if (abs(movement - starting_angle) > distance) {
	cam_dir = cam_dir * -1;
}

// Player check
if (instance_exists(obj_player)) {
	if (rectangle_in_triangle(obj_player.x - 24, obj_player.y - 32, obj_player.x + 24, obj_player.y + 32, x, y, x1, y1, x2, y2)) {
		global.awareness += 0.8;
		show_debug_message(global.awareness);
	}
}