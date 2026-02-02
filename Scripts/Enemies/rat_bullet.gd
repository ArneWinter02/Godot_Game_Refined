extends Node2D


var direction = Vector2.RIGHT
var speed = 110

func _physics_process(delta: float):
	position += direction * speed * delta
