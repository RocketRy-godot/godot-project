extends Control

@onready var gamepause = $gamepausesound
@onready var pausenode = $pausenode
@onready var pause_node = get_tree().root.get_parent()





func resume():
	get_tree().paused = false
	$CanvasLayer/pauseanimation.play_backwards('blur')

func pause():
	get_tree().paused = true
	$CanvasLayer/pauseanimation.play('blur')

func testEsc():
	if Input.is_action_just_pressed('esc') and get_tree().paused == false:
		pause()
		
		
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
		gamepause.play()
	elif Input.is_action_just_pressed('esc') and get_tree().paused == true:
		resume()
		Input.mouse_mode = Input.MOUSE_MODE_CONFINED_HIDDEN
		
	
		
		
	

func _on_resume_pressed():
	resume()
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED_HIDDEN
	
	

	


func _on_quit_pressed():
	Transition.transition()
	await Transition.on_transition_finished
	get_tree().quit()

func _process(_gigachad):
	testEsc()
func _ready():
	Input.mouse_mode = Input.MOUSE_MODE_CONFINED_HIDDEN
