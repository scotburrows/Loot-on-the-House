/// @description Move up
// You can write your code in this editor
if (can_move) {
	//if (!direction_priority) {
	//	image_xscale = abs(image_xscale);
	//	sprite_index = spr_player_up_temp;
	//}
	if (!array_contains(direction_priority, dir.up)) {
		array_push(direction_priority, dir.up)
	}
	
	vspeed = -move_speed;

	if (keyboard_check(ord("S"))) {
		vspeed = 0;
		array_delete(direction_priority, array_get_index(direction_priority, dir.up), 1);
	}
	if (instance_place(x, y+vspeed, obj_tile)) {
		vspeed = 0;
	}
}