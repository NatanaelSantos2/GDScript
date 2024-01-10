extends Node2D
#ESTRUTURA DE DECISÃO
#IF E ELSE
var x = 5

func _ready():
	if x < 10:
		print("X maior que 10")
	elif x > 5:
		print("X maior que 10")
	elif x > 2:
		print("X maior que 2")
	else:
		print("Nenhum dos anteriores")
	
