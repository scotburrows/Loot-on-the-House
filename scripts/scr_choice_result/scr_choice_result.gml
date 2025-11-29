// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_choice_result(result){
	if (result == 0) {
		show_debug_message("quail gaming")
	}
	else if (result == 2) {
		global.ladder_placed = true;
		obj_player.has_ladder = false;
		show_debug_message("Ladder placed");
	}
	else if (result == 4) {
		obj_player.can_move = true;
		room_goto(rm_test2); // SET ROOM To Balcony
	}
	else if (result == 5) {
		global.ladder_placed = false;
		obj_player.has_ladder = true;
	}
}