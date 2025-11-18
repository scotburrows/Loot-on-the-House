/// @description Insert description here
// You can write your code in this editor
//if (keyboard_key_press(ord("W")) or keyboard_key_press(ord("A")) or keyboard_key_press(ord("S")) or keyboard_key_press(ord("D"))) {
//	direction_priority = true;
//}
//show_debug_message(string(direction_priority));

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

// Sprite movement
if (vspeed = 0 and hspeed = 0) {
	image_speed = 0;
	if (image_index > 2) {
		image_index = 0;
	}
	else if (image_index > 0) {
		image_index = 2;
	}
}
else {
	image_speed = 1;
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

if (array_length(direction_priority) > 0 and direction_priority[0] == dir.right) {
	image_xscale = -abs(image_xscale);
	sprite_index = spr_player_side;
}
else if (array_length(direction_priority) > 0) {
	image_xscale = abs(image_xscale);
	if (direction_priority[0] == dir.left) sprite_index = spr_player_side;
	if (direction_priority[0] == dir.up) sprite_index = spr_player_up;
	if (direction_priority[0] == dir.down) sprite_index = spr_player_down;
}

/*if (!instance_place(x, y, obj_roomborder)) {
	global.switching_room = false;
}*/

if (global.switching_room) {
	overlay_alpha += 0.01;
	can_move = false;
}
else {
	overlay_alpha -= 0.01;
}