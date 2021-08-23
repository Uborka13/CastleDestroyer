extends RigidBody

export var muzzle_velocity = 30
export var g = Vector3.DOWN * 10

var shooted = false

var velocity = Vector3.ZERO

func _physics_process(delta):
	if (!shooted):
		velocity += g * delta
		apply_central_impulse(velocity.normalized() * muzzle_velocity)
		transform.origin += velocity * delta
		shooted = true
