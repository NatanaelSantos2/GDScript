extends Node

var nome = "Nael"
var vida = 3
var energia = 10
var arma = true
#OPERADORES AND(e), OR(ou) E NOT(não)

func _ready():
	#todos verdadeiros and
	#pelo menos um verdadeiro or
	_nomeE()
	if vida > 0 and energia > 0 and arma == true:
		print("Desferir um golpe")
	else:
		print("Você não possui energia o suficiente")

func _nomeE():
	if not nome == "Nael":
		print("Acertou!")
	else:
		print("Errou")
