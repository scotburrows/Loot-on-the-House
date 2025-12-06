// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_choice_result(result){
	if (result == 0) {
		show_debug_message("quail gaming")
	}
	else if (result == 2) { // ladder place
		global.ladder_placed = true;
		obj_player.has_ladder = false;
		show_debug_message("Ladder placed");
	}
	else if (result == 4) { // climb ladder
		global.switching_room = true;
		global.room_entrance = 4;
		if (room == rm_frontyard) obj_player.next_room = rm_balcony;
		else if (room == rm_balcony) obj_player.next_room = rm_frontyard;
	}
	else if (result == 5) { /// take back ladder
		global.ladder_placed = false;
		obj_player.has_ladder = true;
	}
	else if (result == 6) { // sabotage generator
		global.powerout = true;
	}
	else if (result == 8) { // enter sewer from manhole
		global.switching_room = true;
		global.room_entrance = 1;
		obj_player.next_room = rm_sewers;
		obj_player.sprite_index = spr_player_down;
	}
	else if (result == 10) { // unlock front door
		global.switching_room = true;
		global.room_entrance = 0;
		obj_player.next_room = rm_foyer;
		global.front_door_unlocked = true;
	}
	else if (result == 10) { // unlock front door
		global.switching_room = true;
		global.room_entrance = 0;
		obj_player.next_room = rm_foyer;
		global.front_door_unlocked = true;
	}
	else if (result = 12) { // get blue key
		global.has_blue_key = true;
		obj_player.has_premium_fish = false;
	}
	else if (result = 14) { // get fish
		obj_player.has_premium_fish = true;
	}
	else if (result = 16) { // unlock vault
		global.vault_unlocked = true;
	}
	else if (result == 18) { // turn on generator
		global.powerout = false;
	}
	else if (result == 20) { // leave for the day
		global.switching_room = true;
		global.room_entrance = 0;
		obj_player.next_room = rm_street_end;
		scr_nextday();
	}
	else if (result == 22) { // go back after shop
		global.switching_room = true;
		global.room_entrance = 0;
		obj_player.next_room = rm_street_start;
		if (global.awareness > 1000) obj_player.next_room = rm_gameover2;
	}
	else if (result >= 24 and result <= 37) { // vault steal
		global.vault_collected[floor((result - 24) / 2)] = true
		global.money += 100;
	}
	else if (result == 38) { // end game
		global.switching_room = true;
		obj_player.next_room = rm_winscreen;
	}
	else if (result == 40) { // unlock basement
		global.basement_unlocked = true;
		global.switching_room = true;
		global.room_entrance = 0;
		obj_player.next_room = rm_basement;
	}
}