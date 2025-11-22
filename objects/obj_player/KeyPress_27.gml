/// @description Pause
// You can write your code in this editor
if (can_move) {
	can_move = false;
	global.paused = true;
}
else if (global.paused) {
	can_move = true;
	global.paused = false;
}