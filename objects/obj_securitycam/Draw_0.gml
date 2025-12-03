/// @description Triangle
// You can write your code in this editor
draw_set_color(color);
draw_set_alpha(0.25);

if (!global.powerout) draw_triangle(x, y, x1, y1, x2, y2, false);

draw_self();

draw_set_alpha(1);