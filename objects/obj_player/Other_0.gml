/// @description Switch room
// You can write your code in this editor
if (instance_place(x, y, obj_roomborder)) {
	if (!global.switching_room) {
		var border = instance_nearest(x, y, obj_roomborder);
		global.switching_room = true;
		global.room_entrance = border.entrance;
		can_move = false;
		instance_destroy(border);
	}
	if (overlay_alpha == 1) {
		room_goto(border.room);
		global.switching_room = false;
	}
}