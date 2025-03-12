/// @description Insert description here
// You can write your code in this editor
var movement = sign((objBall.y + (objBall.sprite_height / 2)) - (y + (sprite_height / 2)));

if (reactionTimer > 0)
{
	reactionTimer--;
}
else
{
	// AI target y position
	var targetPosition = (objBall.y + (objBall.deltaY / objBall.deltaX) * (x - objBall.x));

	// Wall bounce
	while (targetPosition < 0 || targetPosition > room_height)
	{
		if (targetPosition < 0)
		{
			targetPosition = -targetPosition;
		}
		else if (targetPosition > room_height)
		{
			targetPosition = 2 * room_height - targetPosition;
		}
	}

	// Move paddle
	var diff = 0;
	
	if (movement)
	{
		diff = (targetPosition - y) / 2;
	}
	else 
	{
		diff = (y - targetPosition) / 2;
	}
	
	if (objBall.deltaX > 0)
	{
		paddleSpeed = PADDLE_SPEED / 4;
	}
	else
	{
		paddleSpeed = PADDLE_SPEED;
	}
	
	paddleMove(movement, min(paddleSpeed, abs(diff)));

	// Reset reaction timer
	reactionTimer = REACTION_TIME;
}