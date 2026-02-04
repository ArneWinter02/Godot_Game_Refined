extends CharacterBody2D
@onready var ray_cast = $RayCast2D
@onready var player = get_tree().get_first_node_in_group("player")
@onready var animation_tree: AnimatedSprite2D = $AnimationTree
@onready var debug: Label = $debug
@onready var sound_hit: AudioStreamPlayer = $rat_hit
var death_anim = preload("res://Scenes/ShallowScenes/deathanimation.tscn")
@onready var heart = preload("res://Scenes/ShallowScenes/heart.tscn")




var direction = Vector2.RIGHT
@export var speed = 25
@export var healthpoints = 15


func _ready():
	set_physics_process(false)

func _process(_delta):
	direction = (player.position - global_position).normalized()
	ray_cast.target_position = direction * 100
func _physics_process(_delta):
	velocity = direction * speed
	move_and_slide()
	if direction.x:
		animation_tree.play("Right")
		animation_tree.flip_h = direction.x < 0
	else:
		animation_tree.play("Idle")
		animation_tree.flip_h = direction.x < 0
func death():
	Global.enemies_killed += 1
	enemy_calc()
	#emit_signal("remove_from_array",self)
	var enemy_death = death_anim.instantiate()
	enemy_death.scale = animation_tree.scale
	enemy_death.global_position = global_position
	get_parent().call_deferred("add_child",enemy_death)


func _on_hurtbox_hurt(damage):
	heart_spawn()
	healthpoints -= damage
	if healthpoints <= 0:
		death()
		queue_free()
	else:
		sound_hit.play()


func heart_spawn():
	var heartspawn = heart.instantiate()
	if Global.enemies == Global.dropchance:
		Global.dropchance += 25
		heartspawn.global_position = global_position
		get_parent().call_deferred("add_child",heartspawn)
	else:
		return

func enemy_calc():
	Global.enemies += 1
	print(Global.enemies)
