extends Node2D

@onready var transistor = get_tree().get_first_node_in_group("transition") #In der Node verankerte Gruppe für den Spieler
@onready var sprite = $Sprite2D

#func _physics_process(delta: float) -> void:
	#look_at(transistor)
func _on_area_2d_area_entered(area: Area2D) -> void:
	if area.is_in_group("enemy"):
		sprite.hide()
