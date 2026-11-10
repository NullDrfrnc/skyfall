class_name MovementConsumer extends Node

@export var root_entity : Entity
@export var movement_provider : MovementProvider

## A method for converting movement/input vectors from vec2 -> vec3
func _vec2_to_vec3(vec : Vector2) -> Vector3:
	return Vector3(vec.x, 0.0, vec.y)
