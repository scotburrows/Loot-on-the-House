/// @description Insert description here
// You can write your code in this editor
if (global.vault_unlocked) {
	instance_destroy();
}

if (val == 0) {
	sprite_index = spr_vault_red;
}
else if (val == 1) {
	sprite_index = spr_vault_blue;
}
else sprite_index = spr_vault_green;