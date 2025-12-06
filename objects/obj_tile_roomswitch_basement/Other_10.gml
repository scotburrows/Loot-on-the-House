/// @description Object interaction
// You can write your code in this editor
if (global.basement_unlocked) {
	global.switching_room = true;
	global.room_entrance = 0;
	obj_player.next_room = rm_basement;
}
else if (!obj_player.has_basement_key) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "The hatch won't budge. It seems to be locked.", line2: "Would you like to open it and go down?", choice: false, choice1: "Yes", choice2: "No", result: 8, has_extra_line: false});
}
else {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "The hatch won't budge. It seems to be locked.", line2: "Would you like to use the basement key?", choice: true, choice1: "Unlock it", choice2: "Keep it locked", result: 40, has_extra_line: false});
}
//alarm_set(0, 50);