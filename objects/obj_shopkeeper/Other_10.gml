/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (obj_player.has_painting or obj_player.has_silverware or obj_player.has_perfume or obj_player.has_console or obj_player.has_ring or obj_player.has_wine or obj_player.has_vault or obj_player.has_speakers or obj_player.has_pinkbear or obj_player.has_bluebear) {
		var money = 0;
		if (has_painting) money += 20;
		if (has_silverware) money += 10;
		if (has_perfume) money += 15;
		if (has_console) money += 10;
		if (has_ring) money += 20;
		if (has_wine) money += 20;
		if (has_vault) money += 10;
		if (has_speakers) money += 15;
		if (has_pinkbear) money += 5;
		if (has_bluebear) money += 5;
	}
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: num_lines, line1: line1, line2: line2, line3: line3, line4: line4, line5: line5, choice: choice, choice1: choice1, choice2: choice2, result: result, has_extra_line: has_extra_line});
}