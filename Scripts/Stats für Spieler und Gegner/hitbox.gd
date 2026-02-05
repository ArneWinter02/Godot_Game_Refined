extends Area2D



var speed: int = 400
var level: int
var hp = 1.0
var knockback_amount = 100
var attack_size = 1.0
var target = Vector2.ZERO
var angle = Vector2.ZERO

@onready var Player = preload("res://Scenes/ShallowScenes/Waffe.tscn")
@onready var hitbox = $"."
@export var damage = 10.0
@onready var collision = $CollisionShape2D
@onready var disabletimer = $disablehitboxtimer

func tempdisable():
	collision.call_deferred("set","disabled",true)
	disabletimer.start()

func _on_disablehitboxtimer_timeout():
	collision.call_deferred("set","disabled",false)
