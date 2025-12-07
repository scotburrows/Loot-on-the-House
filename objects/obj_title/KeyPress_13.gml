/// @description Insert description here
// You can write your code in this editor
if (room == rm_title) {
	room_goto(rm_instructions);
}
else if (room == rm_instructions) {
	room_goto(rm_start);
	instance_destroy();
}