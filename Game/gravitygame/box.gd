extends RigidBody2D
const STRENGTH_GRAVITY:= 400
 
func _physics_process(delta):
	var gravity = get_gravity_vector()
	apply_central_force(gravity * STRENGTH_GRAVITY)


func get_gravity_vector() -> Vector2:
	var bg = get_tree().get_current_scene().get_node("level/SquareBg")
	return bg.gravity_vector


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
