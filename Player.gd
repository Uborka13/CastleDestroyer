extends KinematicBody

var curHp : int = 10
var maxHp : int = 10
var damage : int = 1

var gold : int = 0

var attackRate : float = 0.3
var lastAttackTime : int = 0

var moveSpeed : float = 5.0
var jumpForce : float = 10.0
var gravity : float = 15.0

var vel : Vector3 = Vector3()

onready var camera = $CameraOrbit

func _physics_process(delta):
	vel.x = 0
	vel.z = 0
	
	var input = Vector3()
	
	if Input.is_action_pressed("move_forward"):
		input.z += 1
	if Input.is_action_pressed("move_backward"):
		input.z -= 1
	if Input.is_action_pressed("move_left"):
		input.x += 1
	if Input.is_action_pressed("move_right"):
		input.x -= 1
	
	input = input.normalized()
	
	var dir = (transform.basis.z * input.z + transform.basis.x * input.x)
	
	vel.x = dir.x * moveSpeed
	vel.z = dir.z * moveSpeed
	
	vel.y -= gravity * delta
	
	vel = move_and_slide(vel, Vector3.UP)
	
func give_gold(amount):
	gold += amount

func take_damage(damageToTake):
	curHp -= damageToTake
	if curHp <= 0:
		die()
		
func die():
	get_tree().reload_current_scene()
