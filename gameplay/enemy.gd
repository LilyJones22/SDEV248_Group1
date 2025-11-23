extends CharacterBody2D

@export var speed: float = 80.0

var waypoints: Array[Vector2] = []
var current_index: int = 0

func _ready() -> void:
	# Collect all children named Waypoint*
	for child in get_children():
		if child is Marker2D and child.name.begins_with("Waypoint"):
			waypoints.append(child.global_position)

	if waypoints.size() == 0:
		push_warning("Enemy has no waypoints!")
		return

	# Start at the first waypoint
	global_position = waypoints[0]

	# Connect the hurtbox for damaging the player
	$Hurtbox.body_entered.connect(_on_hurtbox_body_entered)


func _physics_process(delta: float) -> void:
	if waypoints.size() == 0:
		return

	var target_pos: Vector2 = waypoints[current_index]
	var dir: Vector2 = (target_pos - global_position).normalized()
	velocity = dir * speed
	move_and_slide()

	# If close to the target waypoint, move to next
	if global_position.distance_to(target_pos) < 4.0:
		current_index += 1
		if current_index >= waypoints.size():
			current_index = 0  # loop forever


func _on_hurtbox_body_entered(body: Node) -> void:
	if body.has_method("take_damage"):
		body.take_damage(1)
