extends Area2D


func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))
		
func _on_area_entered(area: Area2D) -> void:
	if area.is_in_group("player"):
		print("player founded")
		var current_scene_file = get_tree().current_scene.scene_file_path
		print(current_scene_file)
		var next_level_number = current_scene_file.to_int() + 1
		print(next_level_number)
		
		var next_level_path = "res://levels/level_" + str(next_level_number) + ".tscn"
		print(next_level_path)
		get_tree().change_scene_to_file(next_level_path)		
		
		
func rotate_left():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", -90, 0.1)
	
func rotate_right():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 90, 0.1)
	
func rotate_down():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 180, 0.1)
	
func rotate_up():
	var tween = create_tween()
	tween.tween_property(self, "rotation_degrees", 0, 0.1)

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
