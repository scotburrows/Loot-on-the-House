/// @description Move right
// You can write your code in this editor
if (can_move) {
	//if (!direction_priority) {
	//	image_xscale = abs(image_xscale);
	//	sprite_index = spr_player_side_temp;
	//}
	if (!array_contains(direction_priority, dir.right)) {
		array_push(direction_priority, dir.right)
	}
	
	hspeed = move_speed;

	if (keyboard_check(ord("A"))) {
		hspeed = 0;
		array_delete(direction_priority, array_get_index(direction_priority, dir.right), 1);
	}
	if (instance_place(x+hspeed, y, obj_tile)) {
		hspeed = 0;
	}
}