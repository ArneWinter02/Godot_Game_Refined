extends Node2D
var checker = 0
var curMusicChecker: String
var entered = false



func _ready() -> void:
	Global.musicChecker = "Menu"
	
func update_music_scene():
	var curMusic = str(curMusicChecker)
	print(curMusic)
	BackroundMusic.audio_stream_player["parameters/switch_to_clip"] = curMusic
	
func _process(_delta: float) -> void:
	if curMusicChecker != Global.musicChecker:
		curMusicChecker = Global.musicChecker
		update_music_scene()
		BackroundMusic.audio_stream_player.play()


func _on_start_pressed() -> void:
	checker = 1
	$Control2/MenuScreenFade.show()
	$Control2/MenuScreenFade/MenuTimer.start()
	$Control2/MenuScreenFade/AnimationTree.play("fade_in")
func _on_wiki_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/UserInterface/WikiScene.tscn")
	checker = 2
func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/UserInterface/Options.tscn")
	checker = 3
func _on_play_button_4_pressed() -> void:
	get_tree().quit()
func _on_menu_timer_timeout() -> void:
	if checker == 1:
		get_tree().change_scene_to_file("res://Scenes/DeeperScene/Beginning.tscn")
