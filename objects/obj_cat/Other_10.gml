/// @description Insert description here
// You can write your code in this editor
audio_play_sound(kitten_mew_1, 2, false);
if (!instance_exists(obj_dialogue)) {
	if (obj_player.has_premium_fish) {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "The cat seems to have a blue key in its mouth.", line2: "Would you like to trade your premium fish for it?", line3: "You obtained the blue key from the cat.", choice: true, choice1: "Trade for key", choice2: "Keep it", has_extra_line: true, result: 12});
	}
	else {
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "The cat seems to have a blue key in its mouth.", line2: "You try to get it, but the cat won't let go."});
	}
}