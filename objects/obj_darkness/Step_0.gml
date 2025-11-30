/// @description Flashlight direction
// You can write your code in this editor
if (player.sprite_index == spr_player_down) {
	if (keyboard_check(ord("A")) == keyboard_check(ord("D"))) angle = 90;
	else if (keyboard_check(ord("A"))) angle = 135;
	else if (keyboard_check(ord("D"))) angle = 45;
}
else if (player.sprite_index == spr_player_up) {
	if (keyboard_check(ord("A")) == keyboard_check(ord("D"))) angle = 270;
	else if (keyboard_check(ord("A"))) angle = 225;
	else if (keyboard_check(ord("D"))) angle = 315;
}
else if (player.sprite_index == spr_player_side && player.image_xscale < 0) {
	if (keyboard_check(ord("W")) == keyboard_check(ord("S"))) angle = 0;
	else if (keyboard_check(ord("W"))) angle = 315;
	else if (keyboard_check(ord("S"))) angle = 45;
}
else if (player.sprite_index == spr_player_side && player.image_xscale > 0) {
	if (keyboard_check(ord("W")) == keyboard_check(ord("S"))) angle = 180;
	else if (keyboard_check(ord("W"))) angle = 225;
	else if (keyboard_check(ord("S"))) angle = 135;
}

/*
x = player.x;
y = player.y;

// Flashlight on
if (player.has_flashlight) sprite_index = spr_darkness_light;
else sprite_index = spr_darkness;

// Flashlight follow player
if (player.image_index == spr_player_down) image_angle = 0;
else if (player.image_index == spr_player_up) image_angle = 180;
else if (player.image_index == spr_player_side) {
	if (player.image_xscale < 0) image_angle = 90;
	else image_angle = 270;
}
*/