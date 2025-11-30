/// @description Teleport player to proper entrance
// You can write your code in this editor
if (instance_exists(obj_player) and global.room_entrance = entrance_no) {
	obj_player.x = x;
	obj_player.y = y;
}
if (!global.powerout and room != rm_basement) {
	global.darkness = false;
}