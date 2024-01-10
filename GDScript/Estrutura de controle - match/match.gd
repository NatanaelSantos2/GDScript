extends Node

var hp:int = 3
@onready var texto:Label = $texto
var nome_jogador:Array = ["naruto","sasuke","kakashi"]
var nome_escolhido:String = ""
@onready var color_rect:ColorRect = $ColorRect

#Função quando inicar
func _ready():
	nome_escolhido = nome_jogador[0]
	match nome_escolhido:
		"naruto":
			texto.text = "Naruto"
		"sasuke": print("Sasuke")
		"kakashi": print("Kakashi")
		
