extends Control

@onready var label1 := $Label1
@onready var label2 := $Label2
@onready var label3 := $Label3
@onready var label4 := $Label4
@onready var wizard := $Wizard

var wizard_start_x: float

func _ready() -> void:
	wizard_start_x = wizard.position.x


	label1.visible = false
	label2.visible = false
	label3.visible = false
	label4.visible = false

	# Start wizard pacing AS SOON AS the scene loads
	_start_wizard_loop()

	# Begin cutscene text sequence
	start_sequence()


func start_sequence() -> void:
	label1.visible = true
	await get_tree().create_timer(1.0).timeout

	label2.visible = true
	await get_tree().create_timer(1.0).timeout

	label3.visible = true
	await get_tree().create_timer(1.0).timeout

	label4.visible = true


func _start_wizard_loop() -> void:
	var offset: float = 80.0      # how far left/right wizard paces
	var duration: float = 0.6     # pacing speed

	var tween := create_tween()
	tween.set_loops()             # loop forever

	# movement
	tween.tween_property(wizard, "position:x", wizard_start_x + offset, duration)
	tween.tween_property(wizard, "position:x", wizard_start_x - offset, duration)
	tween.tween_property(wizard, "position:x", wizard_start_x, duration)


func _process(delta: float) -> void:
	if label4.visible and Input.is_action_just_pressed("ui_accept"):
		get_tree().change_scene_to_file("res://gameplay/Level1.tscn")
