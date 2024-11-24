extends Node2D

@export var MAX_HEALTH := 10.0
var health : float



func _ready():
	health = MAX_HEALTH
	$CharacterBody2D/CanvasLayer/Label.text = str(health) + 'HP'

	

func damage(attack):
	health -= attack
	$CharacterBody2D/CanvasLayer/Label.text = str(health) + 'HP'
	if health <= 0:
		get_parent().queue_free()
