/// @description Random set direction
// You can write your code in this editor
image_speed = 0;

base_direction = irandom(4);
if (base_direction == 1) {
	sprite_index = spr_player_up;
	image_xscale = 1;
}
else if (base_direction == 2) {
	sprite_index = spr_player_side;
	image_xscale = 1;
}
else if (base_direction == 3) {
	sprite_index = spr_player_side;
	image_xscale = -1;
}

alarm_set(0, irandom(180) + 180)