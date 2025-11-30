/// @description Insert description here
// You can write your code in this editor

// wait for other popups to end
with(obj_text_popup) {
	if (self != other) {
		if (self.alpha > 0) {
			waiting = true;
		}
	}
}
if (instance_number(obj_text_popup) == 1) {
	waiting = false;
}

// Display popup and disappear
if (alpha < 1 && increasing && !waiting) {
	alpha += 0.025;
}
if (alpha >= 1 && alarm[0] == -1 && !waiting) {
	alarm_set(0, 60);
}
if (!increasing) {
	alpha -= 0.01;
}
if (alpha < 0) {
	instance_destroy();
}