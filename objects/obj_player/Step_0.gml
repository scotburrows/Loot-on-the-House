/// @description Insert description here
// You can write your code in this editor
//if (keyboard_key_press(ord("W")) or keyboard_key_press(ord("A")) or keyboard_key_press(ord("S")) or keyboard_key_press(ord("D"))) {
//	direction_priority = true;
//}
show_debug_message(string(direction_priority));

// Reset if nothing is pressed
if ((keyboard_check(ord("W")) or keyboard_check(ord("A")) or keyboard_check(ord("S")) or keyboard_check(ord("D"))) == false) {
	direction_priority = [];
	vspeed = 0;
	hspeed = 0;
}
else if ((keyboard_check(ord("W")) or keyboard_check(ord("S"))) == false) {
	vspeed = 0;
}
else if ((keyboard_check(ord("A")) or keyboard_check(ord("D"))) == false) {
	hspeed = 0;
}

// Keep staying in one direction
if (keyboard_check_released(ord("W"))) {
	array_delete(direction_priority, array_get_index(direction_priority, dir.up), 1);
}
if (keyboard_check_released(ord("A"))) {
	array_delete(direction_priority, array_get_index(direction_priority, dir.left), 1);
}
if (keyboard_check_released(ord("S"))) {
	array_delete(direction_priority, array_get_index(direction_priority, dir.down), 1);
}
if (keyboard_check_released(ord("D"))) {
	array_delete(direction_priority, array_get_index(direction_priority, dir.right), 1);
}

if (array_length(direction_priority) > 0 and direction_priority[0] == dir.left) {
	image_xscale = -abs(image_xscale);
	sprite_index = spr_player_side_temp;
}
else if (array_length(direction_priority) > 0) {
	image_xscale = abs(image_xscale);
	if (direction_priority[0] == dir.right) sprite_index = spr_player_side_temp;
	if (direction_priority[0] == dir.up) sprite_index = spr_player_up_temp;
	if (direction_priority[0] == dir.down) sprite_index = spr_player_down_temp;
}