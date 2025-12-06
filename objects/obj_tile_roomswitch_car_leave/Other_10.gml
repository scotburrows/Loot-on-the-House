/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "Are you ready to leave for the day?", choice: true, choice1: "Depart", choice2: "Stay", result: 20, has_extra_line: false});
}