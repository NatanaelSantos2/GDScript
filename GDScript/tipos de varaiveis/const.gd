extends Node2D

#DECLARAÇÃO DE VARIAVEIS
var a
const b = 100 #Const é usado para definir um valor que você não quer alterar
const nome = 'Nael'
const poder = "Fogo"

func _ready():
	#IMPRESSÃO DOS VALORES DAS VARIAVEIS
	a = 10
	print('Variavel -> ',a)
	print('Constante -> ',b)
	print('Poder -> ',poder)

#teste
