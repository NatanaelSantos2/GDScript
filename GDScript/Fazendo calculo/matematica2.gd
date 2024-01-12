extends Node2D

#DECLARAÇÃO DE VARIAVEIS
var a = 7
var b = 7
var c = 8
var d = 10
var media = (a+b+c+d)/4
#ADIÇÃO, SUBTRAÇÃO, MULTIPLICAÇÃO E DIVISÃO

func _ready():
	var tamanhoTela = get_viewport_rect().size
	var metade = tamanhoTela/2
	print('Tamanho da tela: ',tamanhoTela)
	print('Metade da tela: ',metade)
	
	#IMPRESSÃO DOS VALORES DAS VARIAVEIS
	print('Media dos valores: ',media)
