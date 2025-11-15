extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func rotate_left():
	$level/SquareBg.rotation_degrees -= 90
	
func rotate_right():
	$level/SquareBg.rotation_degrees += 90
	

func _unhandled_input(event):
	if Input.is_action_just_pressed("rotate_left"):
		rotate_left()
	if Input.is_action_just_pressed("rotate_right"):
		rotate_right()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
