extends CanvasLayer
@onready var panel = $Panel


func _on_info_timeout_timeout() -> void:
	panel.visible = false
