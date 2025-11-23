extends CharacterBody2D

@export var speed: float = 120.0

var max_health := 3
var health := max_health

@onready var sprite: Sprite2D = $Sprite2D

var anim_time: float = 0.0
@export var anim_speed: float = 10.0
const TOTAL_FRAMES := 9

func _physics_process(delta: float) -> void:
	var input := Vector2.ZERO
	input.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input = input.normalized()

	velocity = input * speed
	move_and_slide()

	# --- Animation ---
	if input != Vector2.ZERO:
		anim_time += delta * anim_speed
		sprite.frame = int(anim_time) % TOTAL_FRAMES
	else:
		sprite.frame = 0


func take_damage(amount: int) -> void:
	health -= amount
	print("Ouch! Health now: ", health)

	if health <= 0:
		get_tree().change_scene_to_file("res://cutscenes/lose.tscn")
