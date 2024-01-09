extends Node2D
var hp:int = 3
@onready var texto:Label = $texto

#var lista:Array = ["Azul","Vemelho","Verde"]
var dic:Dictionary = {
	"goku":10,
	"vegeta":15,
	"picolo":5
}

#Função quando inicar
func _ready():
	print(dic.size())
	print(dic.has("goku"))
	print(dic["vegeta"])
	
	#lista.append("amarelo")
	#print(lista[3])
	
