extends Node2D

#DECLARAÇÃO DE VARIAVEIS
var x = 20
var y = 3
var soma = y+x
var sub = y-x
var mult = y*x
var div = y/x
var resto = 10%3 #retorna o resto da divisão

#ADIÇÃO, SUBTRAÇÃO, MULTIPLICAÇÃO E DIVISÃO

func _ready():
	#IMPRESSÃO DOS VALORES DAS VARIAVEIS
	print(x, '+', y,' = ',soma)
	print(x, '-', y,' = ',sub)
	print(x, '*', y,' = ',mult)
	print(x, '/', y,' = ',div)
	print(resto)
