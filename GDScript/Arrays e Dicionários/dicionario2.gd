extends Node

var players = {}

func _ready():
	players.p1 = "Neru" #adiciona
	players.p2 = "Asta"
	players.p3 = "Maria"
	
	players.erase("p1") #Remove 1 elemento
	
	print("Jogadores ",players)


