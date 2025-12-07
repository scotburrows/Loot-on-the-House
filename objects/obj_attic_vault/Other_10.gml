/// @description Steal
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "There's a vault up here.", line2: "It's not what you're looking for, but...", line3: "You could still take it anyway. Will you?", choice: true, choice1: "Take it", choice2: "Leave it", result: 64, has_extra_line: false});
}