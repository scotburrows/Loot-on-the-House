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
		audio_stop_sound(closing_door);
		audio_play_sound(closing_door, 2, false);
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
		instance_destroy(obj_timer);
		scr_nextday();
	}
	else if (result == 22) { // go back after shop
		global.switching_room = true;
		global.room_entrance = 0;
		obj_player.next_room = rm_street_start;
		instance_create_layer(0, 0, "Instances_1", obj_timer);
		if (global.awareness > 1200) obj_player.next_room = rm_gameover2;
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
	audio_stop_sound(closing_door);
	audio_play_sound(closing_door, 2, false);
		obj_player.next_room = rm_basement;
	}
	else if (result == 42) { // buy shoes
		global.money -= 50;
		obj_player.has_shoes = true;
		audio_play_sound(coinsplash, 2, false);
	}
	else if (result == 44) { // buy cloak
		global.money -= 40;
		obj_player.has_cloak = true;
		audio_play_sound(coinsplash, 2, false);
	}
	else if (result == 46) { // buy ladder
		global.money -= 15;
		obj_player.has_ladder = true;
		audio_play_sound(coinsplash, 2, false);
	}
	else if (result == 48) { // buy flashlight
		global.money -= 25;
		obj_player.has_flashlight = true;
		audio_play_sound(coinsplash, 2, false);
	}
	else if (result == 50) { // steal painting
		obj_player.took_painting = true;
		obj_player.has_painting = true;
		obj_player.future_awareness += 100;
	}
	else if (result == 52) { // steal coins
		obj_player.took_coins = true;
		global.money += 5;
		obj_player.future_awareness += 10;
	}
	else if (result == 54) { // steal silverware
		obj_player.took_silverware = true;
		obj_player.has_silverware = true;
		obj_player.future_awareness += 50;
	}
	else if (result == 56) { // steal perfume
		obj_player.took_perfume = true;
		obj_player.has_perfume = true;
		obj_player.future_awareness += 75;
	}
	else if (result == 58) { // steal console
		obj_player.took_console = true;
		obj_player.has_console = true;
		obj_player.future_awareness += 100;
	}
	else if (result == 60) { // steal ring
		obj_player.took_ring = true;
		obj_player.has_ring = true;
		obj_player.future_awareness += 75;
	}
	else if (result == 62) { // steal wine
		obj_player.took_wine = true;
		obj_player.has_wine = true;
		obj_player.future_awareness += 25;
	}
	else if (result == 64) { // steal vault
		obj_player.took_vault = true;
		obj_player.has_vault = true;
		obj_player.future_awareness += 50;
	}
	else if (result == 66) { // steal headphones
		obj_player.took_speakers = true;
		obj_player.has_speakers = true;
		obj_player.future_awareness += 25;
	}
	else if (result == 68) { // steal pinkbear
		obj_player.took_pinkbear = true;
		obj_player.has_pinkbear = true;
		obj_player.future_awareness += 100;
	}
	else if (result == 70) { // steal bluebear
		obj_player.took_bluebear = true;
		obj_player.has_bluebear = true;
		obj_player.future_awareness += 100;
	}
}