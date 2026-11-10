class_name CameraComponent extends Node

@export var entity : Entity
@export var pivot : Node3D

@export var max_y_pivot : float = 90.0

@export var mouse_sensitivity : float = 1.0

func _unhandled_input(event: InputEvent) -> void:
	if Input.mouse_mode == Input.MOUSE_MODE_CAPTURED:
		if event is InputEventMouseMotion:
			entity.rotate_y(-event.relative.x * (mouse_sensitivity / 1000))
			pivot.rotate_x(-event.relative.y * (mouse_sensitivity / 1000))
			pivot.rotation.x = clamp(
				pivot.rotation.x, 
				deg_to_rad(-max_y_pivot), 
				deg_to_rad(max_y_pivot)
			)
