class_name DefaultMovementConsumer extends MovementConsumer

@export var max_speed : float = 10.0
@export var jump_force : float = 5.5

@export var ground_acceleration : float = 50.0
@export var ground_deceleration : float = 40.0

@export var air_acceleration : float = 6.0
@export var air_deceleration : float = 3.0

func _physics_process(delta : float) -> void:
	var input_direction : Vector3 = (root_entity.transform.basis * _vec2_to_vec3(movement_provider.movement.horizontal)).normalized()
	
	var target_velocity = input_direction * max_speed;
	
	root_entity.velocity = root_entity.velocity.move_toward(
		Vector3(target_velocity.x, root_entity.velocity.y, target_velocity.z),
		_get_movement_modifier() * delta
	)
	
	if root_entity.is_on_floor() and movement_provider.movement.jump:
		root_entity.velocity.y += jump_force
	
	root_entity.move_and_slide()

func _get_movement_modifier() -> float:
	var has_input : bool = movement_provider.movement.horizontal.length() > 0
	
	if root_entity.is_on_floor():
		return ground_acceleration if has_input else ground_deceleration
	
	return air_acceleration if has_input else air_deceleration 
