extends Area2D

@onready var colli_tran = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	colli_tran.disabled = true




func _on_level_beat_timer_timeout() -> void:
	colli_tran.disabled = false
