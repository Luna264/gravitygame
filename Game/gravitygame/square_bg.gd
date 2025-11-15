extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func rotate_left():
	var tween = create_tween()
	tween.tween_property($gravityflip, "rotation_degrees",
	$gravityflip.rotation_degrees - 90, 0.5)
	
func rotate_right():
	var tween = create_tween()
	tween.tween_property($gravityflip, "rotation_degrees",
	$gravityflip.rotation_degrees + 90, 0.5)
	
func rotate_down():
	var tween = create_tween()
	tween.tween_property($gravityflip, "rotation_degrees",
	$gravityflip.rotation_degrees + 180, 0.5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
