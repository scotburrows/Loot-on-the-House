/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if ((not global.ladder_placed) and obj_player.has_ladder) {
		instance_create_layer(0, 0, "Instances", obj_dialogue, {num_lines: 1, line1: "Place your ladder down here?", choice: true, choice1: "Place it", choice2: "Hold onto it", has_extra_line: false, result: 2});
	}
	else if (global.ladder_placed) {
		instance_create_layer(0, 0, "Instances", obj_dialogue, {num_lines: 1, line1: "Will you use the ladder to climb " + str, choice: true, choice1: "Climb", choice2: "Remove ladder", has_extra_line: false, result: 4});
	}
	
}