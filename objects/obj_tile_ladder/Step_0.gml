/// @description Sprite
// You can write your code in this editor
if ((not global.ladder_placed) and instance_exists(obj_player) and obj_player.has_ladder) {
	sprite_index = spr_yard_alert;	
}
else if (global.ladder_placed) {
	sprite_index = spr_yard_ladder;
}