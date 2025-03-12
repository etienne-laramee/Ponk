/// @description Insert description here
// You can write your code in this editor
BALL_SPEED = 1.0;

// Convert angle to vector
function updateBallDelta(degrees)
{
	// Normalize radians
	angle = (degrees % 360);
	deltaX = dcos(angle) * ballSpeed;
	deltaY = dsin(angle) * ballSpeed;
}

deltaX = 0.0;
deltaY = 0.0;
paddleAngleFactor = 8;

ballSpeed = BALL_SPEED;

function originalBallPosition()
{
	x = objPaddleAI.x + objPaddle.sprite_width;
	y = (room_height / 2) - (sprite_height / 2);
}

originalBallPosition();

updateBallDelta(0);