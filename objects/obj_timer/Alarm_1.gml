/// @description Random game over
// You can write your code in this editor
var rand = random(1);
show_debug_message(rand);
if (room == rm_basement) {
	if (rand < 0.03) {
		game_over = true;
		obj_player.can_move = false;
	}
}
else if (room != rm_shop and room != rm_street_start and room != rm_street_start and room != rm_sewers and true) {
	if (rand < 0.1) {
		game_over = true;
		obj_player.can_move = false;
	}
}

alarm_set(1, 60);