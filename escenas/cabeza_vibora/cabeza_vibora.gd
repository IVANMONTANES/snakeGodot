extends CharacterBody2D
var _velocidad = 500
var _manzanas = 0

func _physics_process(delta: float) -> void:
	add_to_group("vibora")
	# movimiento 
	if Input.is_action_just_pressed("derecha"):
		velocity.x = _velocidad
		velocity.y = 0
	elif Input.is_action_just_pressed("izquierda"):
		velocity.x = -_velocidad
		velocity.y = 0
	elif Input.is_action_just_pressed("arriba"):
		velocity.y = -_velocidad
		velocity.x = 0
	elif Input.is_action_just_pressed("abajo"):
		velocity.y = _velocidad
		velocity.x = 0
	move_and_slide()

func comer_manzana():
	_manzanas += 1
