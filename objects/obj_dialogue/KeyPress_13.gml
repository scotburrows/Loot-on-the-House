/// @description Progress text
// You can write your code in this editor
if (drawing) {
	drawing = false;
	char_num = string_length(current_line);
	alarm_set(1, 35);
}
else if (num_lines > 1) {
	num_lines--;
	drawing = true;
	if (current_line == line1) {
		current_line = line2;
	}
	else if (current_line == line2) {
		current_line = line3;
	}
	else if (current_line == line3) {
		current_line = line4;
	}
	else {
		current_line = line5;
	}
	char_num = 0;
	current_string = "";
	alarm_set(0, 3);
}
else if (alarm[2] == -1) {
	obj_player.can_move = true;
	alarm_set(2,30);
}