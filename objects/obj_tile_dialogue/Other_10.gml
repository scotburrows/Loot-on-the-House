/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances", obj_dialogue, {num_lines: num_lines, line1: line1, line2: line2, line3: line3, line4: line4, line5: line5, choice: choice, choice1: choice1, choice2: choice2, result: result});
}