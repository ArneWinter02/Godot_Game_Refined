extends Node2D

@onready var sprite = $Sprite2D

func helper():
	pass

func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		sprite.hide()
