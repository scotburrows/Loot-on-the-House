/// @description Variable definitions
// You can write your code in this editor
window_set_size(1920,1080);

enum dir {
	right, left, up, down
}
direction_priority = [];

global.room_entrance = 0;
flashlight = false;
has_flashlight = false;

global.switching_room = false;
overlay_alpha = 0;
can_move = true;
next_room = rm_test;
global.paused = false;