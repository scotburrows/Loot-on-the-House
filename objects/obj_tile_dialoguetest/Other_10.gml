/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances", obj_dialogue, {num_lines: 1, line1: "I really am a bird!"});
}