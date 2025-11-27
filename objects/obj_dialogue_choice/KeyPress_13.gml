/// @description Check which option & execute
// You can write your code in this editor
if (selection) {
	scr_choice_result(result);
	instance_create_layer(0, 0, "Instances", obj_dialogue, {num_lines: 1, line1: final_line});
}
else {
	instance_destroy(obj_dialogue);
}

instance_destroy();