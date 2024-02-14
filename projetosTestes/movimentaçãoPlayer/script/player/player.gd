extends CharacterBody2D

const andar:int = 5
@onready var character_body_2d = $"."
var forcaAndar_x = 0 
var forcaAndar_y = 0

func _physics_process(_delta):
	movimentacao()
	move_and_slide()

func movimentacao():

	if Input.is_action_pressed("direita"):
		forcaAndar_x += 1 * andar
	if Input.is_action_pressed("esquerda"):
		forcaAndar_x += -1 * andar
	if Input.is_action_pressed("cima"):
		forcaAndar_y += -1 * andar
	if Input.is_action_pressed("baixo"):
		forcaAndar_y += 1 * andar

	character_body_2d.position = Vector2(forcaAndar_x, forcaAndar_y)
	
