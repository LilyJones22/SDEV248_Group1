extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if body.name == "PlayerCharacter":
		match get_node("../").name:
			"Door1-2":
				get_tree().change_scene_to_file.bind("res://gameplay/Level2.tscn").call_deferred()
