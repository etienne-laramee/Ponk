/// @description Insert description here
// You can write your code in this editor
if (keyboard_check_pressed(vk_escape))
{
	game_end(1);
}

if (keyboard_check_pressed(vk_enter))
{
	arrayButtons[selectedButtonIndex].startActivate();
}

if (keyboard_check_released(vk_enter))
{
	arrayButtons[selectedButtonIndex].endActivate();
}

if (keyboard_check_pressed(vk_up))
{
	array_foreach(arrayButtons, function(button) {
		button.unselect();
	});
	selectedButtonIndex = ((selectedButtonIndex + 1) % array_length(arrayButtons));
	arrayButtons[selectedButtonIndex].select()
}

if (keyboard_check_pressed(vk_down))
{
	array_foreach(arrayButtons, function(button) {
		button.unselect();
	});
	selectedButtonIndex = ((selectedButtonIndex + (array_length(arrayButtons) - 1)) % array_length(arrayButtons));
	arrayButtons[selectedButtonIndex].select()
}