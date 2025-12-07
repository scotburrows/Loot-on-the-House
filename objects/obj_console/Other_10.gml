/// @description Steal
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "Here's a top-of-the-line gaming console.", line2: "Will you take it?", line3: "Will you take it?", choice: true, choice1: "Take it", choice2: "Leave it", result: 58, has_extra_line: false});
}