extends Node2D
@onready var label = $Control/Ratskilled

func _ready() -> void:
	$Control/MenuScreenFade.show()
	$Control/MenuScreenFade/AnimationTree.play("fade_out")

func _physics_process(delta: float) -> void:
	label.text = "Rats killed " + str(Global.enemies_killed)

func _on_retry_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/DeeperScene/Beginning.tscn")

func _on_main_menu_2_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/UserInterface/Main_menu.tscn")
