extends Node

@onready var menu_screen_fade = $MenuScreenFade
@onready var pause_screen = $"."

# Called when the node enters the scene tree for the first time.

func _on_main_menu_pressed() -> void:
	menu_screen_fade.show()
	$MenuScreenFade/AnimationTree.play("fade_in")
	get_tree().change_scene_to_file("res://Scenes/DeeperScene/main.tscn")

func _on_resume_pressed() -> void:
	get_tree().paused = false
	pause_screen.hide()
