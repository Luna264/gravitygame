extends Node2D
@onready var square_bg: Sprite2D = %SquareBg

#a
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func rotate_left():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", -90, 0.4)
	
func rotate_right():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 90, 0.4)
	
func rotate_down():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 180, 0.4)
	
func rotate_up():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 0, 0.4)

func _unhandled_input(event):
	if Input.is_action_just_pressed("rotate_left"):
		rotate_left()
	if Input.is_action_just_pressed("rotate_right"):
		rotate_right()
	if Input.is_action_just_pressed("rotate_down"):
		rotate_down()
	if Input.is_action_just_pressed("rotate_up"):
		rotate_up()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
