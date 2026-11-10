class_name GravityComponent extends Node

@export var body : CharacterBody3D

func _physics_process(delta: float) -> void:
	if !body.is_on_floor():
		body.velocity.y -= Constants.GRAVITY * delta
