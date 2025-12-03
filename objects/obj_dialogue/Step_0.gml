/// @description Create choice
// You can write your code in this editor
if (!drawing and ((has_extra_line and num_lines == 2) or (!has_extra_line and num_lines == 1)) and choice) {
	instance_create_layer(0, 0, "Instances", obj_dialogue_choice, {choice1: choice1, choice2: choice2, result: result});
	choice = false;
}

if (instance_exists(obj_dialogue_choice)) {
	flicker = false;
}