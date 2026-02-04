extends Node2D
var curMusicChecker: String
var entered = false
var checker = 0
@onready var Transistor = $Map_Transition/CollisionShape2D
@onready var level_beat_timer: Timer = $Map_Transition/LevelBeatTimer
@onready var screen_fade_timer: Timer = $MenuScreenFade/ScreenFadeTimer



func _ready() -> void:
	Global.enemies = 0
	Global.BulletDamage = 0
	Global.bulletHP = 0
	Global.BulletSpeed = 0
	Global.max_muni = 0
	Global.reload_speed = 0
	Global.bonus_movespeed = 0
	Global.enemies_killed = 0
	Global.dropchance = 12
	$MenuScreenFade.show()
	$MenuScreenFade/AnimationTree.play("fade_out")
	Global.musicChecker = "Level"
func _process(_delta: float) -> void:
	if curMusicChecker != Global.musicChecker:
		curMusicChecker = Global.musicChecker
		update_music_scene()
		BackroundMusic.audio_stream_player.play()

func update_music_scene():
	var curMusic = str(curMusicChecker)
	BackroundMusic.audio_stream_player["parameters/switch_to_clip"] = curMusic
	


func _on_screen_fade_timer_timeout() -> void:
		get_tree().change_scene_to_file("res://Scenes/DeeperScene/main.tscn")


func _on_map_transition_body_entered(body: Node2D) -> void:
		$MenuScreenFade.show()
		$MenuScreenFade/ScreenFadeTimer.start()
		$MenuScreenFade/AnimationTree.play("fade_in")
		screen_fade_timer.start()
