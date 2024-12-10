extends Control

@onready var gameover: Control = $"."

@onready var game_manager: Node = %Game_Manager
func gameove():
	if game_manager.lives == 0:
		Transition.transition()
		await Transition.on_transition_finished
		gameover.visibie = true
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
func _ready():
	gameover.visible = false

	


		


func _on_button_pressed() -> void:
	get_tree().reload_current_scene()


func _on_button_2_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
