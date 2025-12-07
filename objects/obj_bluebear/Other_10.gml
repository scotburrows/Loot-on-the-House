/// @description Steal
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "There's a cute blue bear stuffed animal here.", line2: "It seems well-loved.", line3: "Are you really going to take it?", choice: true, choice1: "Take it", choice2: "Leave it", result: 68, has_extra_line: false});
}