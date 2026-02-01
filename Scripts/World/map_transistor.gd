extends Area2D

@onready var Transistor = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Transistor.call_deferred("set","disabled", true)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_level_beat_timer_timeout() -> void:
	Transistor.call_deferred("set","disalbed", false)
