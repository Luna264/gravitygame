extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func rotate_left():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees",
	self.rotation_degrees - 90, 0.5)
	
func rotate_right():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees",
	self.rotation_degrees + 90, 0.5)
	
func rotate_down():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees",
	self.rotation_degrees + 180, 0.5)
	
func rotate_up():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees",
	self.rotation_degrees - 180, 0.5)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
	
func _physics_process(delta: float) -> void:
	velocity.x = 500
	if Input.is_action_pressed("gravLeft"):
		rotate_left()
	if Input.is_action_pressed("gravRight"):
		rotate_right()
	if Input.is_action_pressed("gravUp"):
		rotate_up()
	if Input.is_action_pressed("gravDown"):
		rotate_down()
	
	
