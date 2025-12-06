/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (!global.powerout) {	
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "Will you shut off the generator?", line2: "The power has turned off across the house.", choice: true, choice1: "Yes", choice2: "Leave it", result: 6, has_extra_line: true});
	}
	else {
		
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "Will you turn the generator back on?", line2: "The power is back on now.", choice: true, choice1: "Yes", choice2: "No", result: 18, has_extra_line: true});
	}
}