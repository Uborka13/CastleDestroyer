extends MeshInstance

onready var x = get_parent().x
onready var y = get_parent().y
onready var z = get_parent().z

func _ready() -> void:
	scale = Vector3(x,y,z)
