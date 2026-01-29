extends CharacterBody2D
@export var healthpoints = 20.0
@export var speed = 70.0
@export var dropchance = 10

@onready var heart = preload("res://Scenes/ShallowScenes/heart.tscn")
@onready var player = get_tree().get_first_node_in_group("player") #In der Node verankerte Gruppe für den Spieler
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D #in der Szene verankerte 2D animation
@onready var sound_hit = $rat_hit

var death_anim = preload("res://Scenes/ShallowScenes/deathanimation.tscn")

signal remove_from_array(object) 

func _physics_process(_delta: float):
	var direction = global_position.direction_to(player.global_position)
	velocity = direction*speed
	move_and_slide()
	if direction.x:
		animated_sprite_2d.play("Right")
		animated_sprite_2d.flip_h = direction.x < 0

func death():
	Global.enemies += 1
	print(Global.enemies)
	emit_signal("remove_from_array",self)
	var enemy_death = death_anim.instantiate()
	enemy_death.scale = animated_sprite_2d.scale
	enemy_death.global_position = global_position
	get_parent().call_deferred("add_child",enemy_death)
	heart_drop()
	queue_free()
func _on_hurtbox_hurt(damage):
	healthpoints -= damage
	if healthpoints <= 0:
		death()
	else:
		sound_hit.play()

func heart_drop():
	var heartspawn = heart.instantiate()
	if Global.enemies == dropchance:
		dropchance += 15
		Global.enemies += 1
		heartspawn.global_position = global_position
		get_parent().call_deferred("add_child",heartspawn)
