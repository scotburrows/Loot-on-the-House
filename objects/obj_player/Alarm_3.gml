/// @description Toggle flashlight p2
// You can write your code in this editor
if ((!instance_exists(obj_dialogue) or obj_dialogue.alarm[2] != -1) and (next_room == rm_empty) and !global.switching_room) flashlight = !flashlight;