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
		obj_player.can_move = true;
		room_goto(rm_test2); // SET ROOM To Balcony
	}
	else if (result == 5) { /// take back ladder
		global.ladder_placed = false;
		obj_player.has_ladder = true;
	}
	else if (result == 6) { // sabotage generator
		global.powerout = true;
		obj_player.future_awareness += 50;
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
}