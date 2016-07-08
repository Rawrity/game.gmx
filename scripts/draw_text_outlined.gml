//draw_text_outlined(x, y, text, text color, outline width, outline color);

var original_color = draw_get_color();

draw_set_color(argument5);
draw_text(argument0-argument4, argument1, argument2);
draw_text(argument0, argument1-argument4, argument2);
draw_text(argument0+argument4, argument1, argument2);
draw_text(argument0, argument1+argument4, argument2);

draw_set_color(argument3);
draw_text(argument0, argument1, argument2);

draw_set_color(original_color);

