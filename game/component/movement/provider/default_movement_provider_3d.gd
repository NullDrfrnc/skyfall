class_name DefaultMovementProvider extends MovementProvider

func _init() -> void:
	movement = DefaultMovementInput3D.new()

func _physics_process(_delta : float) -> void:
	movement.horizontal = Input.get_vector(
		"mov_left", 
		"mov_right", 
		"mov_forward", 
		"mov_backward"
	)
	movement.jump = Input.is_action_pressed("mov_jump")
