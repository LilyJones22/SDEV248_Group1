extends Node

@export var next: PackedScene

func _ready():
	$AnimationPlayer.play("opening")
	await $AnimationPlayer.animation_finished
	get_tree().change_scene_to_packed(next)
	
