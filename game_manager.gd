extends Node

@export var hearts : Array[Node]
var points=0
var lives = 5

func decrease_health():
	lives -= 1
	print(lives)
	for h in 5:
		if (h < lives):
			hearts[h].show()
		else:
			hearts[h].hide()
	if lives == 0:
		$Gameover.visible = true
		get_tree().paused == true

func add_point():
	points += 1
	print(points)
