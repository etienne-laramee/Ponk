/// @description Insert description here
// You can write your code in this editor

draw_set_font(fontTitle);
draw_set_halign(fa_center);


// Calculate Y offset
var y_offset = get_title_offset();

// Draw the title with the offset
draw_text(room_width / 2, 3 + round(y_offset), "PONK");

draw_set_halign(fa_left);
