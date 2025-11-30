/// @description Display text w/ bg
// You can write your code in this editor
draw_set_font(fnt_trebuchet);
draw_set_color(color);
draw_set_alpha(alpha);
draw_set_halign(fa_center);

draw_text_transformed(camera_get_view_x(view_camera[0]) + 480, camera_get_view_y(view_camera[0]) + 75, text, 0.35, 0.35, 0);

draw_set_alpha(1);
draw_set_halign(fa_left);