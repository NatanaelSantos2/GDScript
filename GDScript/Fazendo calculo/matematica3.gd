extends Node2D

#DECLARAÇÃO DE VARIAVEIS
var a = 10
#ADIÇÃO, SUBTRAÇÃO, MULTIPLICAÇÃO E DIVISÃO

func _ready():
	#IMPRESSÃO DOS VALORES DAS VARIAVEIS
	print(a)
	a = 100
	print(a)
	a = 1000
	print(a)
        soma(10)

func soma(b):
        print(a+b)
