extends Node2D   

func _ready() -> void:
	$InteractArea.body_entered.connect(_on_body_entered)


func _on_body_entered(body: Node) -> void:
	if body is CharacterBody2D:
		print("NPC: player reached wizard, ending game")
		get_tree().change_scene_to_file("res://cutscenes/win.tscn")
