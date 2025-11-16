extends CharacterBody2D


#a
func rotate_left():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", -90, 0)

func rotate_right():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 90, 0)

func rotate_down():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 180, 0)

func rotate_up():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 0, 0)


func _physics_process(delta):
	var direction = Vector2.UP.rotated(rotation)
	velocity = direction * -500
	if Input.is_action_just_pressed("gravLeft"):
		rotate_left()
	if Input.is_action_just_pressed("gravRight"):
		rotate_right()
	if Input.is_action_just_pressed("gravUp"):
		rotate_up()
	if Input.is_action_just_pressed("gravDown"):
		rotate_down()
	
	move_and_slide()
