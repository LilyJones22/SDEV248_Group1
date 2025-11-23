extends CharacterBody2D

@export var speed: float = 60.0

var waypoints: Array[Vector2] = []
var current_index: int = 0

func _ready() -> void:
	for child in get_children():
		if child is Marker2D and child.name.begins_with("Waypoint"):
			waypoints.append(child.global_position)

	if waypoints.size() == 0:
		push_warning("Enemy has no waypoints!")
	else:
		global_position = waypoints[0]

	# Connect the hurtbox signal
	$Hurtbox.body_entered.connect(_on_hurtbox_body_entered)


func _physics_process(delta: float) -> void:
	if waypoints.size() == 0:
		return

	var target_pos: Vector2 = waypoints[current_index]
	var dir: Vector2 = (target_pos - global_position).normalized()
	velocity = dir * speed
	move_and_slide()

	if global_position.distance_to(target_pos) < 4.0:
		current_index += 1
		if current_index >= waypoints.size():
			current_index = 0

# debugging health problems
func _on_hurtbox_body_entered(body: Node) -> void:
	print("HURTBOX HIT:", body.name)


	if body.is_in_group("player"):
		if "health" in body:
			body.health -= 1
			print("Enemy damaged player, new health:", body.health)

			if body.health <= 0:
				get_tree().change_scene_to_file("res://cutscenes/lose.tscn")
