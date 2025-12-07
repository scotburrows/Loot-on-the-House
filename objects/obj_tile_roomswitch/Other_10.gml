/// @description Object interaction
// You can write your code in this editor
audio_play_sound(closing_door, 2, false);
global.switching_room = true;
global.room_entrance = entrance;
obj_player.next_room = next_room;
//alarm_set(0, 50);