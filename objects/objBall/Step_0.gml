/// @description Insert description here

// Bounce off AI
if place_meeting(x + deltaX, y + deltaY, objPaddleAI)
{	
	// Play "Pong"
	audio_sound_pitch(soundPing, 1);
	audio_play_sound(soundPing, 1, false);
	
	var yPaddleCenter = objPaddleAI.y + (objPaddleAI.sprite_height / 2);
	var yBallCenter = (y + (sprite_height / 2))
	
	updateBallDelta((180 - angle) + ((yBallCenter - yPaddleCenter) * paddleAngleFactor));
	
    x = objPaddleAI.x + objPaddleAI.sprite_width + 1;
}

// Bounce off Player
if place_meeting(x + deltaX, y + deltaY, objPaddlePlayer)
{	
	// Play "Ping"
	audio_sound_pitch(soundPing, 2);
	audio_play_sound(soundPing, 1, false);
	
	var yPaddleCenter = objPaddlePlayer.y + (objPaddlePlayer.sprite_height / 2);
	var yBallCenter = (y + (sprite_height / 2))
	
	updateBallDelta((180 - angle) - ((yBallCenter - yPaddleCenter) * paddleAngleFactor));
	
    //x = objPaddlePlayer.x - sprite_width;
}


// Bounce off Top and Bottom
if ((y + deltaY <= 0) || (y + deltaY >= (room_height - sprite_height)))
{
	updateBallDelta(-angle);
}

// Player point
if (x + deltaX <= 0)
{
	audio_sound_pitch(soundGoal, 1);
	audio_play_sound(soundGoal, 1, false);
	objectGameManager.resetPaddlesAndBall();
	objectGameManager.playerScore++;
	
	if (objectGameManager.playerScore >= objectGameManager.MAX_SCORE)
	{
		objectGameManager.nextLevel();
	}
}

// AI point
if (x + deltaX >= room_width)
{
	audio_sound_pitch(soundPing, 0.5);
	audio_play_sound(soundPing, 1, false);
	objectGameManager.resetPaddlesAndBall();
	objectGameManager.aiScore++;
	
	if (objectGameManager.aiScore >= objectGameManager.MAX_SCORE)
	{
		objectGameManager.gameOver();
	}
}

//move_and_collide(deltaX, deltaY, all);
x += deltaX;
y += deltaY;