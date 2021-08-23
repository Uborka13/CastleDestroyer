extends Spatial

func _physics_process(delta):
	if Input.is_action_pressed("move_forward"):
		if (rotation.x < 0.3):
			rotate_x(0.005)
	if Input.is_action_pressed("move_backward"):
		if (rotation.x > -0.3):
			rotate_x(-0.005)
	if Input.is_action_pressed("move_left"):
		if (rotation.y < 0.3):
			rotate_y(0.005)
	if Input.is_action_pressed("move_right"):
		if (rotation.y > -0.3):
			rotate_y(-0.005)
	
