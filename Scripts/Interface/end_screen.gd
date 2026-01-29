extends Node2D
var checker = 0

func _ready() -> void:
	$Control/MenuScreenFade.show()
	$Control/MenuScreenFade/AnimationTree.play("fade_out")


func _on_retry_pressed() -> void:
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/DeeperScene/Beginning.tscn")

func _on_main_menu_2_pressed() -> void:
	checker = 1
	if checker == 1:
		get_tree().change_scene_to_file("res://Scenes/UserInterface/Main_menu.tscn")
		get_tree().paused = false
