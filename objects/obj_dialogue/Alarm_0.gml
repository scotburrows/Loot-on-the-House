/// @description Character progression
// You can write your code in this editor
char_num++;
current_string = string_copy(current_line, 1, char_num);

if (string_length(current_line) == char_num) {
	drawing = false;
	alarm_set(1, 35);
}
else {
	alarm_set(0, 3);
}