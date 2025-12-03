/// @description Teleport player to proper entrance
// You can write your code in this editor
if (instance_exists(obj_player) and global.room_entrance = entrance_no) {
	obj_player.x = x;
	obj_player.y = y;
	camera_set_view_pos(view_camera[0], clamp(x + x_offset, 0, room_width - 960) , clamp(y - y_offset, 0, room_height - 540));
}
if (!global.powerout and room != rm_basement and room != rm_sewers) {
	global.darkness = false;
}