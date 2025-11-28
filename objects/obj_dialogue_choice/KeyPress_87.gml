/// @description Switch selection
// You can write your code in this editor
selection = not selection;

if (selection) {
	x_offset = 30 + (15 * string_length(choice1));
	y_offset = -5;
}
else {
	x_offset = 30 + (15 * string_length(choice2));
	y_offset = 45;
}

flicker = true;
alarm_set(1, 35);