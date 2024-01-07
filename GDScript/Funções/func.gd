extends Node

var dano:bool = true
@onready var texto = $texto
@export var velocidade:int = 5

#Função quando inicar
func _ready() -> void: #Funções sem valor
	player_um()
	#player_um("Mago", 12)

#Minha função
func player_um() -> bool: #Funções com valor true
	if dano:
		print("sofreu dano")
		return true
	else:
		print("Inleso")
		return false
	#if tipo == "Mago" and force > 10:
		#print("Tudo certo!")
