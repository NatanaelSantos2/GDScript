extends Node

var vida:int = 10
var nome_jogador:String = 'Natanel'

func _ready():
	nome()

func nome():
	if(vida < 3):
		print("Player fraco")
	elif(vida >= 3):
		print("player forte")
	else:
		print(nome_jogador)
