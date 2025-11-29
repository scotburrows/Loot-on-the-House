/// @description Insert description here
// You can write your code in this editor
if (!obj_player.has_ladder and !global.ladder_placed) {
	instance_destroy();
}

if ((not global.ladder_placed) and instance_exists(obj_player) and obj_player.has_ladder) {
	// draw exclamation mark	
}