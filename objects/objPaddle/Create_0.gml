/// @description Insert description here
// You can write your code in this editor

// Select sprite
sprite_index = spritePaddle;

// Globals
BOTTOM_POSITION = (room_height - (sprite_height));
TOP_POSITION = 0;
PADDLE_SPEED = 1;

// Position in the middle
function startingPosition()
{
	y = (room_height / 2) - (sprite_height / 2);
}

startingPosition();

// Move the paddle
function paddleMove(yMovement, paddleSpeed)
{
	var futureYPosition = (y + (yMovement * paddleSpeed));
	
	// Move Down
	if (yMovement > 0)
	{
		if (futureYPosition < BOTTOM_POSITION)
		{
			y = futureYPosition;
		}
		else 
		{
			y = BOTTOM_POSITION;
		}
	}
	// Move Up
	else if (yMovement < 0)
	{
		if (futureYPosition >= TOP_POSITION)
		{
			y = futureYPosition;
		}
		else
		{
			y = TOP_POSITION;
		}
	}
}