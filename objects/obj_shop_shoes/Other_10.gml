/// @description Buy
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (global.money > 50) {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "The shoes? Buy them and you'll be able to run around.", line2: "They'll be $50. You buyin'?", line3: "You bought the shoes! Press SHIFT to walk faster.", choice: true, choice1: "Yea", choice2: "Nah", result: 42, has_extra_line: true});
	}
	else {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "The shoes? Buy them and you'll be able to run around.", line2: "They're $50. You don't got enough for that."});
	}
}