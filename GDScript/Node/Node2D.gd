extends Node2D

var dano:bool = true
@onready var texto = $texto
@export var velocidade:int = 5

#Função quando inicar
func _ready() -> void:
	#player_um("Mago", 12)
	pass


func _on_button_pressed():
	print("ola mundo")
	pass # Replace with function body.
