/// @description Insert description here
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "You obtained the red key!"});
	global.has_red_key = true;
	instance_destroy();
}