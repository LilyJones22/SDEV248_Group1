extends CanvasLayer

@onready var health_bar := $HealthBar
var player: Node = null

func _ready() -> void:
	# Find the player in the scene tree (must be in group "player")
	player = get_tree().get_first_node_in_group("player")
	if player == null:
		# fallback: try by name
		player = get_tree().get_root().find_child("Player", true, false)

	# Optional: set max to player's max_health once
	if player and health_bar:
		if "max_health" in player:
			health_bar.max_value = player.max_health


func _process(delta: float) -> void:
	if player and health_bar:
		# Just read the value directly
		health_bar.value = player.health
