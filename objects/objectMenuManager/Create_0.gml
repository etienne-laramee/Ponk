/// @description Insert description here
// You can write your code in this editor
window_set_fullscreen(true);

audio_stop_sound(musicMainMenu);

audio_play_sound(musicMainMenu, 1, true);

audio_sound_gain(musicMainMenu, 0.1, 0);

/// @description Initialize variables
// Amplitude of the up and down motion
title_amplitude = 1;
// Speed of the motion (frequency)
title_speed = 0.05;
// Current time for the sine wave
title_time = 0;

function get_title_offset() {
    // Increment time
    title_time += title_speed;
    // Return the sine wave offset
    return sin(title_time) * title_amplitude;
}

// Center buttons.
arrayButtons = [objectButtonPlay, objectButtonQuit];
selectedButtonIndex = 0;

for (var i = 0; i < array_length(arrayButtons); i++)
{
	if (instance_exists(arrayButtons[i]))
	{
		with (arrayButtons[i])
		{
			x = (room_width / 2) ;
			y = (room_height / 2) + (sprite_height * 1.1 * i);
			buttonIndex = i;
		}
	}
}

arrayButtons[selectedButtonIndex].select();