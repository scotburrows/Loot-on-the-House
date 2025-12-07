// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_nextday(){
	global.awareness += obj_player.future_awareness;
	obj_player.future_awareness = 0;
	
	if (global.ladder_placed) {
		global.ladder_placed = false;
		global.awareness += 100;
	}
	
	if (global.front_door_unlocked) {
		global.awareness += 50;
		global.front_door_unlocked = false;
	}
	
	if (global.powerout) {
		global.awareness += 100;
		global.powerout = false;
	}
	
	if (obj_player.has_premium_fish) {
		global.awareness += 40;
	}
	
	global.cat_location = irandom(5);
}