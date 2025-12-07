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
has_flashlight = false;

global.switching_room = false;
overlay_alpha = 0;
can_move = true;
next_room = rm_empty;
global.paused = false;

future_awareness = 0;
global.awareness = 0;

global.sewer_discovered = false;

has_ladder = false;
global.ladder_placed = false;
global.money = 0;

global.darkness = false;
global.powerout = false;

has_front_door_key = false;
global.front_door_unlocked = false;

has_premium_fish = false; // $10
global.has_red_key = false;
global.has_blue_key = false;
global.has_green_key = false;
global.vault_unlocked = false;
global.entered_vault = false;
global.vault_collected = [false, false, false, false, false, false, false];

has_basement_key = false;
global.basement_unlocked = false;

has_shoes = false;
has_cloak = false;
is_cloaking = false;
global.found_cat = true;
exit_percent = 120;
global.cat_location = 0;

has_painting = false; // $20
has_silverware = false; // $10
has_perfume = false; // $20
has_console = false; // $10
has_ring = false; // $15
has_wine = false; // $20
has_vault = false; // $10
has_speakers = false; // $15
has_pinkbear = false; // $5
has_bluebear = false; // $5

took_coins = false; // %5
took_painting = false;
took_silverware = false;
took_perfume = false;
took_console = false;
took_ring = false;
took_wine = false;
took_vault = false;
took_speakers = false;
took_pinkbear = false
took_bluebear = false;