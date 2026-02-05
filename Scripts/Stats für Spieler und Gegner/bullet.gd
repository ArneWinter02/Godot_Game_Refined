extends Node2D
signal remove_from_array(object) 

var speed: int = 400
var target = Vector2.ZERO
var angle = Vector2.ZERO

@onready var audio_stream_player = $AudioStreamPlayer

@onready var player = get_tree().get_first_node_in_group("player")

func _ready():
	angle = global_position.direction_to(target)
	rotation = angle.angle() + deg_to_rad(135)
	speed += Global.BulletSpeed

func _physics_process(delta: float) -> void:
	position += transform.x * speed * delta
func _on_timer_timeout() -> void:
	emit_signal("remove_from_array",self)
	queue_free()
