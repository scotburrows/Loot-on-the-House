/// @description Buy
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (global.money >= 40) {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "Nothing better than this to sneak around in.", line2: "It'll be $40. You buyin'?", line3: "You bought the cloak! Press CTRL to sneak around cameras.", choice: true, choice1: "Yea", choice2: "Nah", result: 44, has_extra_line: true});
	}
	else {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "Nothing better than this to sneak around in.", line2: "It's $40. You don't got enough for that."});
	}
}