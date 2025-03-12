/// @description Insert description here
// You can write your code in this editor

draw_set_font(fontMenu);

draw_set_halign(fa_center);

//draw_text(x, y, buttonText);

draw_text(room_width/2-0.5, 3, string(aiScore) + "  " + string(playerScore));

draw_text(2,3, "LVL " + string(level+1));

draw_set_halign(fa_left);