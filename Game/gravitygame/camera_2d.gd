extends Camera2D

@export var randomStrength: float = 20
@export var shakeFade: float = 5
@onready var drone: CharacterBody2D = %drone
@onready var shake_timer: Timer = $"../ShakeTimer"
var drone_firsthit_wall = false

var rng = RandomNumberGenerator.new()

var shake_strength: float = 0.0

func _ready() -> void:
	drone.hitShake.connect(_on_drone_hit_shake)
	drone.deathShake.connect(_on_drone_death_shake)

func apply_shake():
	shake_strength = randomStrength
	
func randomOffset() -> Vector2:
	return Vector2(rng.randf_range(-shake_strength, shake_strength),rng.randf_range(-shake_strength,shake_strength))
	
func _process(delta: float) -> void:
	if shake_strength > 0:
		shake_strength = lerpf(shake_strength, 0, shakeFade)
		offset = randomOffset()

func _on_drone_hit_shake() -> void:
	print("hit")
	apply_shake()
	
func _on_drone_death_shake() -> void:
	print("death")
	apply_shake()
