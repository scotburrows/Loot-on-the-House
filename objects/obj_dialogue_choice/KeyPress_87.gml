/// @description Switch selection (actual code)
// You can write your code in this editor
if (!obj_player.can_move) {
	selection = not selection;

	if (selection) { // Top choice
		x_offset = 35 + (14 * string_length(choice1));
		y_offset = 0;
	}
	else { // Bottom choice
		x_offset = 35 + (14 * string_length(choice2));
		y_offset = 50;
	}

	flicker = true;
	alarm_set(1, 35);
}