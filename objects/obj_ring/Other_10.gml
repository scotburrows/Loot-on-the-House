/// @description Steal
// You can write your code in this editor
if (!instance_exists(obj_dialogue) and !obj_player.took_ring) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 2, line1: "There's a ring on the table.", line2: "Will you take it?", line3: "Will you take it?", choice: true, choice1: "Take it", choice2: "Leave it", result: 60, has_extra_line: false});
}