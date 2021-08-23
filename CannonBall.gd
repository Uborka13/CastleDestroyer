extends RigidBody

export var muzzle_velocity = 30.0
export var g = Vector3.DOWN * 10

var velocity = Vector3.ZERO

func _physics_process(delta):
	velocity += g * delta
	apply_central_impulse(transform.origin + velocity.normalized())
	transform.origin += velocity * delta
