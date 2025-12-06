/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_alpha(1);
draw_set_font(fnt_trebuchet);
draw_text_transformed(x, y, "You made off with $" + string(global.money) + " in total.", 0.25, 0.25, 0);
draw_text_transformed(x, y + 64, "Press ENTER to return to title", 0.2, 0.2, 0);