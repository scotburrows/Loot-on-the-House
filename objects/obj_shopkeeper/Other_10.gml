/// @description Object interaction
// You can write your code in this editor
if (!instance_exists(obj_dialogue)) {
	if (obj_player.has_painting or obj_player.has_silverware or obj_player.has_perfume or obj_player.has_console or obj_player.has_ring or obj_player.has_wine or obj_player.has_vault or obj_player.has_speakers or obj_player.has_pinkbear or obj_player.has_bluebear) {
		var money = 0;
		if (obj_player.has_painting) {
			money += 20;
			obj_player.has_painting = false;
		}
		if (obj_player.has_silverware) {
			money += 10;
			obj_player.has_silverware = false;
		}
		if (obj_player.has_perfume) {
			money += 15;
			obj_player.has_perfume = false;
		}
		if (obj_player.has_console) {
			money += 10;
			obj_player.has_console = false;
		}
		if (obj_player.has_ring) {
			money += 20;
			obj_player.has_ring = false;
		}
		if (obj_player.has_wine) {
			money += 20;
			obj_player.has_wine = false;
		}
		if (obj_player.has_vault) {
			money += 10;
			obj_player.has_vault = false;
		}
		if (obj_player.has_speakers) {
			money += 15;
			obj_player.has_speakers = false;
		}
		if (obj_player.has_pinkbear){
			money += 5;
			obj_player.has_pinkbear = false;
		}
		if (obj_player.has_bluebear) {
			money += 5;
			obj_player.has_bluebear = false;
		}
		global.money += money;
		instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 3, line1: "You've brought some stuff to me, eh?", line2: "Let's see here...", line3: "I'll give ya $" + string(money) + " for all this.", line4: "Nice doin' business with ya."});
	}
	else instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "Good to see ya around."});
}