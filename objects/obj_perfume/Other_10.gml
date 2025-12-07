/// @description Steal
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "There's some fancy perfume in the drawer.", line2: "Will you take it?", line3: "Will you take it?", choice: true, choice1: "Take it", choice2: "Leave it", result: 56, has_extra_line: false});
}