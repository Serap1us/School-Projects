extends Label

var score = 0
@onready var scoreSound: AudioStreamPlayer2D = $scoreSound

func updateScore():
	score += 1
	text = str(score)

	if scoreSound:
		scoreSound.play()
