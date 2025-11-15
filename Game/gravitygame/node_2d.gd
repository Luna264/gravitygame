extends Node2D

extends Sprite2D
var current_direction := "down"
var gravity_vector:= Vector2.DOWN

func rotate_to(direction: String):
	if direction == current_direction:
		return
match direction:
	"up":
		rotation_degrees: 90
		gravity_vector: Vector2.UP
	"down":
		rotation_degrees:0
		gravity_vector: Vector2.DOWN
	"left":
		rotation_degrees: -90
		gravity_vector: Vector2.LEFT
	"right":
		rotation_degrees: 180
		gravity_vector: Vector2.RIGHT

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func rotate_left():
	$level/SquareBg.rotation_degrees = -90
	
func rotate_right():
	$level/SquareBg.rotation_degrees = 90
	
func rotate_down():
	$level/SquareBg.rotation_degrees = 180
	
func rotate_up():
	$level/SquareBg.rotation_degrees = 0

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
