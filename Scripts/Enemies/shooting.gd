extends State
class_name ShootingState

@export var bullet_node : PackedScene
@onready var shoot_timer: Timer = $Shoot_Timer
@onready var animation_tree= $"../../AnimationTree"



func transition():
	if not ray_cast.is_colliding():
		get_parent().change_state("Follow")

func enter():
	super.enter()
	shoot_timer.start()

func exit():
	super.exit()

func _on_shoot_timer_timeout() -> void:
	shoot()
	
func shoot():
	var bullet = bullet_node.instantiate()
	bullet.position = global_position
	bullet.direction = (player.global_position - global_position).normalized()
	get_tree().current_scene.call_deferred("add_child",bullet)
