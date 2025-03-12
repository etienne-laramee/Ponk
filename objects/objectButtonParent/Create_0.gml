/// @description Insert description here
// You can write your code in this editor
sprite_index = spriteButton;
image_alpha = 0.6;
hasMoved = false;

function select()
{
	image_alpha = 1;
	objectMenuManager.selectedButtonIndex = buttonIndex;
	audio_play_sound(soundPing, 1, false);
}

function unselect()
{
	image_alpha = 0.6;
}

function startActivate()
{
	if (!hasMoved)
	{
		y += 1;
		hasMoved = true;
	}
}

function endActivate()
{
	if (hasMoved)
	{
		y -= 1;
		hasMoved = false;
	}
	
	audio_play_sound(soundGoal, 1, false);
	
	alarm[0] = 10;
}