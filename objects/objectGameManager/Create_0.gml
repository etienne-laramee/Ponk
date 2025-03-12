/// @description Insert description here
// You can write your code in this editor
MAX_SCORE = 10;

playerScore = 0;
aiScore = 0;

level = 0;
difficulty = 0;

window_set_fullscreen(true);

audio_sound_gain(musicMainMenu, 0.5, 0);

function resetPaddlesAndBall()
{
	objPaddleAI.startingPosition();
	objPaddlePlayer.startingPosition();
	objBall.originalBallPosition();
	objBall.updateBallDelta(0);
}

function resetScore()
{
	playerScore = 0;
	aiScore = 0;
}

function nextLevel()
{
	level++;
	difficulty++;
	resetScore();
	objPaddleAI.REACTION_TIME = objPaddleAI.START_REACTION_TIME - difficulty;
	objBall.ballSpeed += (difficulty * 0.1);
	audio_play_sound(soundNextLevel, 1, false);
	resetPaddlesAndBall();
}

function gameOver()
{
	audio_play_sound(soundGameOver, 1, false);
	room_goto(roomMainMenu);
}