/// @description Switch room
// You can write your code in this editor
if (instance_place(x, y, obj_roomborder)) {
	if (!global.switching_room) {
		var border = instance_nearest(x, y, obj_roomborder);
		global.switching_room = true;
		global.entrance = border.entrance;
		room_goto(border.room_togo);
		instance_destroy(border);
	}
}