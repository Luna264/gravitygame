extends CharacterBody2D

<<<<<<< Updated upstream
@onready var drone: CharacterBody2D = $"."
=======
signal hitShake
signal deathShake
@onready var ray_cast_2d: RayCast2D = $RayCast2D
@onready var death_timer: Timer = %DeathTimer
>>>>>>> Stashed changes

func rotate_left():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 270, 0.3)

func rotate_right():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 90, 0.3)

func rotate_down():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 180, 0.3)

func rotate_up():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 0, 0.3)


func _physics_process(delta):
	var direction = Vector2.UP.rotated(rotation)
	velocity = direction * -100
	if Input.is_action_just_pressed("gravLeft"):
		rotate_left()
	if Input.is_action_just_pressed("gravRight"):
		rotate_right()
	if Input.is_action_just_pressed("gravUp"):
		rotate_up()
	if Input.is_action_just_pressed("gravDown"):
		rotate_down()
		
	if ray_cast_2d.is_colliding():
		var col = ray_cast_2d.get_collider()
		if col is TileMapLayer:
			emit_signal("hitShake")
			print("hit!")
			
	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("hazards"):
		emit_signal("deathShake")
		death_timer.start()

func _on_death_timer_timeout() -> void:
	queue_free()
