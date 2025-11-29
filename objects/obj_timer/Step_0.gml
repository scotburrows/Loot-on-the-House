/// @description Insert description here
// You can write your code in this editor
if (global.time_running && global.time_remaining > 0) {
	global.time_remaining -= 1;
}

if (been_spotted and !has_reduced_time) {
	global.time_remaining -= 79;
	if (global.time_remaining < 5400) {
		has_reduced_time = true;
	}
}

if (global.time_remaining <= 0) {
	// check if player in room
}