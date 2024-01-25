extends Node

var array = [100, 200, 300, 400, 500]
func _ready():
	print('Antes ', array)
	array.append(600)
	array.remove_at(2)
	print('Depois ', array)
	print('Tamanho ', array.size())
