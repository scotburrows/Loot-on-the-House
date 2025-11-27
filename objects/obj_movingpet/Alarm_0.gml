/// @description Random movement to nearby tile
// You can write your code in this editor
var int = irandom(4);
var next_movement = irandom(180) + 180
if (int == 0) { // up
	if not (instance_position(x, y - 1, obj_tile) or instance_position(x, y - 1, obj_roomborder)) {
		move_towards_point(x, y - 1, 1);
		// sprite stuff
		alarm_set(0, next_movement)
	}
	else alarm_set(0, 1);
}
else if (int == 1) { // down
	if not (instance_position(x, y + 1, obj_tile) or instance_position(x, y + 1, obj_roomborder)) {
		move_towards_point(x, y + 1, 1);
		// sprite stuff
		alarm_set(0, next_movement)
	}
	else alarm_set(0, 1);
}
else if (int == 2) { // right
	if not (instance_position(x + 1, y, obj_tile) or instance_position(x + 1, y, obj_roomborder)) {
		move_towards_point(x + 1, y, 1);
		// sprite stuff
		alarm_set(0, next_movement)
	}
	else alarm_set(0, 1);
}
else if (int == 3) { // left
	if not (instance_position(x - 1, y, obj_tile) or instance_position(x - 1, y, obj_roomborder)) {
		move_towards_point(x - 1, y, 1);
		// sprite stuff
		alarm_set(0, next_movement)
	}
	else alarm_set(0, 1);
}
else {// otherwise chill
	alarm_set(0, irandom(180) + 180)
}