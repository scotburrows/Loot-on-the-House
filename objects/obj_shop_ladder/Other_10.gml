/// @description Buy
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (global.money > 15) {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "The ladder's good for climbin' up places.", line2: "It'll be $15. You buyin'?", line3: "You bought the ladder! You could place this somewhere.", choice: true, choice1: "Yea", choice2: "Nah", result: 46, has_extra_line: true});
	}
	else {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "The ladder's good for climbin' up places.", line2: "It's $15. You ain't even got enough for that."});
	}
}