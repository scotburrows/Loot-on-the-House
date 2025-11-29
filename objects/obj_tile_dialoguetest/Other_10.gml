/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances", obj_dialogue, {num_lines: 2, line1: "This is a test dialogue", line2: "Here shows where you can choose between two options", line3: "You chose true", choice: true, choice1: "True", choice2: "Not true", result: 0});
}