/// @description Buy
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (global.money >= 25) {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "It's a flashlight. Use this in dark places or whatever.", line2: "It'll be $25. You buyin'?", line3: "You bought the flashlight! Press ENTER to use it.", choice: true, choice1: "Yea", choice2: "Nah", result: 48, has_extra_line: true});
	}
	else {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "It's a flashlight. Use this in dark places or whatever.", line2: "It's $25. You don't got enough for that."});
	}
}