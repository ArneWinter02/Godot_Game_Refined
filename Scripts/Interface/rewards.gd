extends ColorRect



@onready var ItemLevel = $ItemLevel
@onready var ItemDescrip = $ItemDescrip
@onready var ItemName = $ItemName
@onready var ItemIcon = $ItemBackround/ItemDisplay

var mouse_over = false
var item = null
@onready var player = get_tree().get_first_node_in_group("player")


signal selected_reward(reward)

func _ready():
	connect("selected_reward",Callable(player,"reward_character"))
	if item == null:
		item = "Crocs1"
	ItemName.text = RewardDataBase.REWARDS[item]["displayname"]
	ItemDescrip.text = RewardDataBase.REWARDS[item]["detail"]
	ItemLevel.text = RewardDataBase.REWARDS[item]["level"]
	ItemIcon.texture = load(RewardDataBase.REWARDS[item]["icon"])



func _input(event: InputEvent) -> void:
	if event.is_action("shoot"):
		if mouse_over:
			
			emit_signal("selected_reward",item)



func _on_mouse_entered() -> void:
	mouse_over = true


func _on_mouse_exited() -> void:
	mouse_over = false
