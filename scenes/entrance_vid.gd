extends Node2D
var is_playing = true

func _on_video_stream_player_finished() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
