extends Node

@onready var texto:Label = $texto

func _ready():
	texto.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	texto.text = 'Ola mundo!'
	
func _process(_delta):
	if Input.is_action_just_pressed("btn_left"):
		print("Esquerda")
