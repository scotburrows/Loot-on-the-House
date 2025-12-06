/// @description Insert description here
// You can write your code in this editor
if (!obj_player.has_ladder and !global.ladder_placed) {
	instance_destroy();
}

if (room == rm_frontyard) str = "up to the balcony?"
else str = "down to the yard?"