/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (!global.entered_vault) {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "Are you ready to leave for the day?", choice: true, choice1: "Depart", choice2: "Stay", result: 20, has_extra_line: false});
	}
	else {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "Are you ready to leave for good?", line2: "Make sure you've gotten everything you want to.", choice: true, choice1: "Depart", choice2: "Stay", result: 38, has_extra_line: false});
	}
}