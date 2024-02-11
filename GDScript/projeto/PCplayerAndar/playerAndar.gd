extends CharacterBody2D

@export var speed = 10

func _physics_process(_delta):
	var andar_x = 0
	var andar_y = 0
	
	if Input.is_action_pressed("move_left"):
		andar_x += speed
	elif Input.is_action_pressed("move_low"):
		andar_y += speed
	elif Input.is_action_pressed("move_right"):
		andar_x += -speed
	elif Input.is_action_pressed("move_up"):
		andar_y += -speed
	
	translate(Vector2(andar_x, andar_y))

	move_and_slide()

