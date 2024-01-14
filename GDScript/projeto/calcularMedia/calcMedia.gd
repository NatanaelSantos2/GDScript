extends Node

var a = 7
var b = 10
var c = 0
var media = (a+b+c)/3

func _ready():
	if media > 9:
		print("Parabens!!", media)
	elif media >= 7:
		print("Passou com media: ", media)
	elif media >= 5 and media < 7:
		print("Vai pra final com media: ", media)
	elif media < 5 and media > 3:
		print("Reprovado com media: ", media)
	else:
		print("Reprovado sem chance de negociar!")
