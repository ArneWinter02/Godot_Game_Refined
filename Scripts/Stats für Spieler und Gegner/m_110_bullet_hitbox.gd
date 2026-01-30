extends Area2D
signal remove_from_array(object) 


@export var speed: int = 400
var level: int
@export var hp = 1.0
var knockback_amount = 100
@export var attack_size = 1.0
var target = Vector2.ZERO
var angle = Vector2.ZERO


@export var damage = 20.0
@onready var collision = $CollisionShape2D
@onready var disabletimer = $disablehitboxtimer

func tempdisable():
	collision.call_deferred("set","disabled",true)
	disabletimer.start()

func _on_disablehitboxtimer_timeout():
	collision.call_deferred("set","disabled",false)
func enemy_hit(charge = 1):
	hp-=charge
	if hp <= 0:
		emit_signal("remove_from_array",self)
		queue_free()
