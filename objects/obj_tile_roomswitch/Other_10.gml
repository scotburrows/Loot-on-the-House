/// @description Object interaction
// You can write your code in this editor
global.switching_room = true;
global.room_entrance = entrance;
obj_player.next_room = next_room;
audio_stop_sound(closing_door);
audio_play_sound(closing_door, 2, false);
//alarm_set(0, 50);