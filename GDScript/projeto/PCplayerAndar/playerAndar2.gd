extends CharacterBody2D

@export var speed:int = 10
@export var forcaGravidade:int = 10
@onready var sprite_2d = $Sprite2D
@onready var camera_2d = $Camera2D

func _physics_process(delta):
	andar(delta)
	gravidades()
	move_and_slide()
	
func andar(_delta):
	var andar_x = 0
	var up_y = 0
	var left:bool = Input.is_action_pressed("move_left")
	var right:bool = Input.is_action_pressed("move_right")
	var up:bool = Input.is_action_just_pressed("up")
	
	if left and up or right and up:
		camera_2d.position_smoothing_enabled = false
		
	elif left:
		andar_x += speed
		sprite_2d.flip_h = false
	if right:
		andar_x += -speed
		sprite_2d.flip_h = true
		
	if is_on_floor():
		if up:
			up_y += 20 * -speed
			camera_2d.position_smoothing_enabled = true
		else:
			camera_2d.position_smoothing_enabled = false
			
	elif forcaGravidade > 0:
		forcaGravidade += 0
	else:
		forcaGravidade = 10
	
	translate(Vector2(andar_x, up_y))

func gravidades():
	var gravidade = forcaGravidade
	translate(Vector2(0,gravidade))
