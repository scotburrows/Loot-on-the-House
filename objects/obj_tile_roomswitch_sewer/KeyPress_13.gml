/// @description Check for interaction
// You can write your code in this editor
var xdiff = 0;
var ydiff = 0;
if (obj_player.sprite_index = spr_player_side) {
	if (obj_player.image_xscale < 0) {
		xdiff = -32;
	}
	else {
		xdiff = 32;
	}
}
else if (obj_player.sprite_index = spr_player_up) {
	ydiff = 32;
}
else if (obj_player.sprite_index = spr_player_down) {
	ydiff = -32;
}

if (instance_place(x + xdiff, y + ydiff, obj_player) or instance_place(x, y, obj_player)) {
	event_user(0);
}