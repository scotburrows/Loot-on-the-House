/// @description Check which option & execute
// You can write your code in this editor
if (selection) {
	scr_choice_result(result);
	//instance_create_layer(0, 0, "Instances", obj_dialogue, {num_lines: 1, line1: final_line});
}
else {
	scr_choice_result(result + 1);
	obj_player.can_move = true;
	obj_dialogue.alarm[2] = 30;
	alarm_set(2, 30);
}

instance_destroy();