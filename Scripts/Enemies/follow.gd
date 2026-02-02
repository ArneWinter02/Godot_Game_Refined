extends State
class_name FollowState

func transition():
	if ray_cast.is_colliding():
		get_parent().change_state("Shooting")

func enter():
	super.enter()
	owner.set_physics_process(true)
	
func exit():
	super.exit()
	owner.set_physics_process(false)
