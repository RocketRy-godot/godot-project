extends Control

@onready var gameover: Control = $"."

@onready var game_manager: Node = %Game_Manager
func gameove():
	if game_manager.lives == 0:
		gameover.visibie = true
func _ready():
	gameover.visible = false
	


		
