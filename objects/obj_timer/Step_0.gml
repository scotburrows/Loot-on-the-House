/// @description Insert description here
// You can write your code in this editor

// Spotted reduces time
if (!instance_exists(obj_dialogue) or obj_dialogue.alarm[2] != -1) {
	if (global.time_running && global.time_remaining > 0) {
		global.time_remaining -= 10;
	}

	if (been_spotted and !has_reduced_time) {
		global.time_remaining -= 79;
		if (global.time_remaining < 5400) {
			has_reduced_time = true;
		}
	}
}

// Out of time
if (global.time_remaining <= 0) {
	if (!out_of_time) {
		out_of_time = true;
		alarm_set(0, 3);
		alarm_set(1, 30);
	}
}

// Don't display timer outside of house
if (room == rm_shop or false) {
	flicker = false;
}