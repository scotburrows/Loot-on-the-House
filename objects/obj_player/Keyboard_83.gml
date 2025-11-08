/// @description Move down
// You can write your code in this editor
if (can_move) {
	//if (!direction_priority) {
	//	image_xscale = abs(image_xscale);
	//	sprite_index = spr_player_down_temp;
	//}
	if (!array_contains(direction_priority, dir.down)) {
		array_push(direction_priority, dir.down)
	}
	
	vspeed = move_speed;

	if (keyboard_check(ord("W"))) {
		vspeed = 0;
		array_delete(direction_priority, array_get_index(direction_priority, dir.down), 1);
	}
	if (instance_place(x, y+vspeed, obj_tile)) {
		vspeed = 0;
	}
}