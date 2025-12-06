/// @description Fridge
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (global.has_blue_key or obj_player.has_premium_fish) {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "It's a fridge with nothing noteworthy inside."});
	}
	else {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "It's a fridge.", line2: "You spot what looks like premium fish inside.", line3: "Will you take it?", choice: true, choice1: "Take it", choice2: "Leave it", result: 14, has_extra_line: false});
	}
}