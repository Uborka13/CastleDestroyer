extends Spatial


onready var cannonBall = preload("res://CannonBall.tscn")
onready var muzzle = $Barrel/Muzzle

func _process(delta):
	if (Input.is_action_just_pressed("shoot")):
		var ball = cannonBall.instance()
		get_parent().add_child(ball)
		ball.transform = muzzle.global_transform
		ball.velocity = ball.transform.basis.z * ball.muzzle_velocity
	
