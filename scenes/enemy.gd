extends RigidBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass

func _process(delta):
	pass

@onready var player = $/root/Node/CharacterBody2D 

@onready var game_manager: Node = %Game_Manager

	


func _on_area_2d_body_entered(body):
	if (body.name == 'CharacterBody2D'):
		var y_delta = position.y - body.position.y
		if (y_delta > 30):
			print('Destroy enemy')
			queue_free()
			body.jump()
			
		else:
			print('Decrease player health')
			game_manager.decrease_health()
