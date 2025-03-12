/// @description Insert description here
// You can write your code in this editor
var movement = (keyboard_check(vk_down) - keyboard_check(vk_up));

paddleMove(movement, PADDLE_SPEED);