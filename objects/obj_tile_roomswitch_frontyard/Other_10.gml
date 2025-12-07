/// @description Object interaction
// You can write your code in this editor
if (global.awareness < 100 or global.front_door_unlocked) {
	global.switching_room = true;
	global.room_entrance = 0;
	obj_player.next_room = rm_foyer;
}
else if (!obj_player.has_front_door_key and !instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "The front doors are locked.", line2: "Would you like to open it and go down?", choice: false, choice1: "Yes", choice2: "No", result: 8, has_extra_line: false});
}
else if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "The front doors are locked.", line2: "Would you like to use the key you have?", choice: true, choice1: "Unlock it", choice2: "Keep it locked", result: 10, has_extra_line: false});
}
//alarm_set(0, 50);