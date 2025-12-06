/// @description Object interaction
// You can write your code in this editor
if (global.powerout) {	
	global.switching_room = true;
	global.room_entrance = 0;
	obj_player.next_room = rm_attic;
}
else if (!instance_exists(obj_dialogue)) {
	instance_create_layer(0, 0, "Instances_1", obj_dialogue, {num_lines: 1, line1: "The hatch at the top of the ladder seems electronically locked."});
}