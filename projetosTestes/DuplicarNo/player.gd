extends CharacterBody2D

@export var SPEED = 300.0
@export var JUMP_VELOCITY = -400.0
@onready var sprite = $sprite
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	var direction = Input.get_axis("esquerda", "direita")
	if direction:
		velocity.x = direction * SPEED
		sprite.scale.x = direction
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
