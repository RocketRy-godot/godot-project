extends Control
@onready var video_stream_player: VideoStreamPlayer = $VideoStreamPlayer


func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/Entrance vid.tscn")
