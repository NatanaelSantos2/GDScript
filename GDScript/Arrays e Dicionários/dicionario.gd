extends Node

var jogadores = {
	"p1":"Nael",
	"p2":"Neru",
	"p3":"Asta"
}

var dic = {
	"player1":"Nathan",
	"player2":"Marcos"
}

func _ready():
	#print(jogadores)
	print("Primeiro jogador", jogadores.p1)
	print(dic.player1)
