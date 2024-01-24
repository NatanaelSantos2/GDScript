extends Node

#array
var array = [100, 200, 300, 400, 500, 600, 700]
var tipos = ['FPS', 'RPG', 'Ação', 'Plataforma']
#0 -> 100
#1 -> 200
#2 -> 300
#3 -> 400
#4 -> 500
#5 -> 600
#6 -> 700

func _ready():
	tipos.append('Aventura') #Esta adicionando "Aventura" na lista.
	tipos.remove_at(1) #Remove da posição 1
	print(array[2])
	print(tipos)
