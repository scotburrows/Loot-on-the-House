/// @description Move back & forth in circular motion
// You can write your code in this editor

// Other vertices of triangle calc
x1 = x + radius * cos(degtorad(movement - (distance/2)));
x2 = x + radius * cos(degtorad(movement + (distance/2)));
y1 = y + radius * sin(degtorad(movement - (distance/2)));
y2 = y + radius * sin(degtorad(movement + (distance/2)));

if (moving and !global.powerout) {
	movement += 0.2 * cam_dir;
	
	image_angle = 90 - movement;
	image_speed = 1;
	// Move back and forth
	if (abs(movement - starting_angle) > distance) {
		cam_dir = cam_dir * -1;
	}
}
else {
	image_index = obj_timer.been_spotted;
	image_speed = 0;
}



// Player check
if (instance_exists(obj_player) and !global.powerout) {
	if (!obj_player.is_cloaking and rectangle_in_triangle(obj_player.x - 24, obj_player.y - 32, obj_player.x + 24, obj_player.y + 32, x, y, x1, y1, x2, y2)) {
		global.awareness += 0.8;
		camera_awareness += 0.8;
		show_debug_message(global.awareness);
	}
}

if (camera_awareness >= 40 && instance_exists(obj_timer) && !obj_timer.been_spotted) {
	obj_timer.been_spotted = true;
	moving = false;
	color = c_red;
	alarm_set(0, 120);
	instance_create_layer(0, 0, "Instances", obj_text_popup, {text: "You've been spotted!", color: c_red});
}