/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "Will you steal this from the vault?", choice: true, choice1: "Yes", choice2: "Yes", result: 24 + (vault_num * 2), has_extra_line: false});
}