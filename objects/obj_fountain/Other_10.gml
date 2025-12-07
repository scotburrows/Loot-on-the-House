/// @description Steal
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (obj_player.took_coins) {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "The fountain looks clean and empty."});
	}
	else {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "It's a fountain with lots of coins inside.", line2: "Will you steal the coins in the fountain?", line3: "You gathered around $5 of coins.", choice: true, choice1: "Take them", choice2: "Leave them", result: 52, has_extra_line: true});
	}
}