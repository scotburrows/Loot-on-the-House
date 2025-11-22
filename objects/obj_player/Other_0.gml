/// @description Switch room
// You can write your code in this editor
if (instance_place(x, y, obj_roomborder)) {
	if (!global.switching_room) {
		var border = instance_nearest(x, y, obj_roomborder);
		next_room = border.room;
		global.room_entrance = border.entrance;
		global.switching_room = true;
		can_move = false;
		instance_destroy(border);
	}
}