/// @description Object interaction
// You can write your code in this editor
if (!global.sewer_discovered and !instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances", obj_dialogue, {num_lines: 2, line1: "There appears to be a manhole here.", line2: "Would you like to open it and go down?", choice: true, choice1: "Yes", choice2: "No", result: result, has_extra_line: false});
}
else {
	global.switching_room = true;
	global.room_entrance = 1;
	obj_player.next_room = rm_basement;
}