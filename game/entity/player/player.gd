class_name Player extends Entity

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	elif event.is_action("ui_cancel"):
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
