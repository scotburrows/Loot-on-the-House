/// @description Random movement to nearby tile
// You can write your code in this editor
var int = irandom(5);
var next_movement = irandom(180) + 240;
speed = 1;

if (int == 0) { // up
	if not (instance_position(x, y - 64, obj_tile) or instance_position(x, y - 64, obj_roomborder)) {
		move_towards_point(x, y - 1, 1);
		// sprite stuff
		sprite_index = spr_player_up;
		image_xscale = 1;
		image_speed = 1;
		
		alarm_set(0, next_movement)
		alarm_set(1, 64);
	}
	else alarm_set(0, 1);
}
else if (int == 1) { // down
	if not (instance_position(x, y + 64, obj_tile) or instance_position(x, y + 64, obj_roomborder)) {
		move_towards_point(x, y + 1, 1);
		// sprite stuff
		sprite_index = spr_player_down;
		image_xscale = 1;
		image_speed = 1;
		
		alarm_set(0, next_movement)
		alarm_set(1, 64);
	}
	else alarm_set(0, 1);
}
else if (int == 2) { // right
	if not (instance_position(x + 64, y, obj_tile) or instance_position(x + 64, y, obj_roomborder)) {
		move_towards_point(x + 1, y, 1);
		// sprite stuff
		sprite_index = spr_player_side;
		image_xscale = -1;
		image_speed = 1;
		
		alarm_set(0, next_movement)
		alarm_set(1, 64);
	}
	else alarm_set(0, 1);
}
else if (int == 3) { // left
	if not (instance_position(x - 64, y, obj_tile) or instance_position(x - 64, y, obj_roomborder)) {
		move_towards_point(x - 1, y, 1);
		// sprite stuff
		sprite_index = spr_player_side;
		image_xscale = 1;
		image_speed = 1;
		
		alarm_set(0, next_movement)
		alarm_set(1, 64);
	}
	else alarm_set(0, 1);
}
else {// otherwise chill
	speed = 0;
	alarm_set(0, irandom(180) + 180);
}

//show_debug_message(int);