extends NodeObject



enum Controls {
	UP,
	DOWN,
	LEFT,
	RIGHT
}
var controls : Array    = []
var camera   : Camera2D = Camera2D.new()



func _enter_tree():
	add_child(camera)



func _input(event : InputEvent) -> void:
	if (event is InputEventKey):
		if (not event.echo):
			var key   : String = OS.get_scancode_string(event.scancode)
			var input : int    = -1
			if (key == 'w'):
				input = Controls.UP
			elif (key == 's'):
				input = Controls.DOWN
			elif (key == 'a'):
				input = Controls.LEFT
			elif (key == 'd'):
				input = Controls.RIGHT
			if (input != -1):
				if (event.pressed):
					if (not controls.has(input)):
						controls.append(input)
				else:
					if (controls.has(input)):
						controls.erase(input)



func _physics_process(delta : float) -> void:
	if (controls.has(Controls.UP)):
		camera.position.y -= 100 * delta
	if (controls.has(Controls.DOWN)):
		camera.position.y += 100 * delta
	if (controls.has(Controls.LEFT)):
		camera.position.x -= 100 * delta
	if (controls.has(Controls.RIGHT)):
		camera.position.x += 100 * delta
