/// @description Steal
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "There's lots of silverware on the table.", line2: "They look expensive. Will you take them?", line3: "Will you take it?", choice: true, choice1: "Take them", choice2: "Leave them", result: 54, has_extra_line: false});
}