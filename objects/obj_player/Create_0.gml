/// @description Variable definitions
// You can write your code in this editor
window_set_size(1920,1080);
randomize();

enum dir {
	right, left, up, down
}
direction_priority = [];

global.room_entrance = 0;
flashlight = false;
has_flashlight = true; // REMOVE THIS

global.switching_room = false;
overlay_alpha = 0;
can_move = true;
next_room = rm_empty;
global.paused = false;

future_awareness = 0;
global.awareness = 0;

has_ladder = false;
global.ladder_placed = false;
global.money = 0;

global.darkness = false;
global.powerout = false;