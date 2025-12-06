/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (global.has_red_key and global.has_blue_key and global.has_green_key) {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "Would you like to use the keys to unlock the vault?", choice: true, choice1: "Yes", choice2: "No", has_extra_line: false, result: 16});
	}
	else {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "The entrance to the vault seems locked by three keys."});
	}
}