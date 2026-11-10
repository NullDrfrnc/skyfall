extends Node

static var GRAVITY : float = ProjectSettings.get_setting("physics/3d/default_gravity"):
	set(_value):
		printerr("You may not change the value of Constants.GRAVITY")
		pass
