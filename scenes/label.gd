extends Label
@onready var label: Label = %Label
var points=0

func add_point(points):
	points += 1
	label.text = str(points)
	
