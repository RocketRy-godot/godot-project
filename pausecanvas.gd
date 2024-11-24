extends CanvasLayer

func _ready():
	if Input.is_action_just_pressed('test'):
		$mainworld.damage(1)
