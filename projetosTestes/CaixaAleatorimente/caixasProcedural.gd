extends Node

var list1:Array = [47, 132, 217, 301, 386, 470, 555, 639, 724, 808, 893, 977, 1062]
var listNumAleatorio:Array = []
#Linha1 144
#Linha2 235
#Linha3 324
#Linha4 415
#Linha5 506
#Linha6 596
var valorAleatorio:int = 0
var contTentativas:int = 0
var caixa1:int  = 0
var caixa2:int  = 0
var caixa3:int  = 0
var caixa4:int  = 0
var caixa5:int  = 0
var caixa6:int  = 0
@onready var caixa_linha_1:Sprite2D = $caixaLinha1
@onready var caixa_linha_2:Sprite2D = $caixaLinha2
@onready var caixa_linha_3:Sprite2D = $caixaLinha3
@onready var caixa_linha_4:Sprite2D = $caixaLinha4
@onready var caixa_linha_5:Sprite2D = $caixaLinha5
@onready var caixa_linha_6:Sprite2D = $caixaLinha6
@onready var portal:Sprite2D = $Portal


func _process(_delta) -> void:
	if contTentativas < 7:
		valorAleatorio = randi() % 13 + 0
		for a in range(0, list1.size()):
			if a == valorAleatorio && caixa1 < 1:
				caixa_linha_1.position.x = list1[a]
				caixa_linha_1.position.y = 144
				listNumAleatorio.append(valorAleatorio)
				caixa1 += 1
			
		if caixa1 == 1:
			caixaAl2()
		contTentativas += 1

func caixaAl2() -> void:
	if listNumAleatorio[0] != valorAleatorio:
		for c in range(0, list1.size()):
			if  c == valorAleatorio && caixa2 < 1:
				caixa_linha_2.position.x = list1[c]
				caixa_linha_2.position.y = 235
				listNumAleatorio.append(valorAleatorio)
				caixa2 += 1
		if caixa2 == 1:
			caixaAl3()

func caixaAl3() -> void:
	if listNumAleatorio[0] != valorAleatorio:
		if listNumAleatorio[1] != valorAleatorio:
			for f in range(0, list1.size()):
				if f == valorAleatorio && caixa3 < 1:
					caixa_linha_3.position.x = list1[f]
					caixa_linha_3.position.y = 324
					listNumAleatorio.append(valorAleatorio)
					caixa3 += 1
			if caixa2 == 1:
				caixaAl4()

func caixaAl4() -> void:
	if listNumAleatorio[0] != valorAleatorio:
		if listNumAleatorio[1] != valorAleatorio:
			if listNumAleatorio[2] != valorAleatorio:
				for j in range(0, list1.size()):
					if j == valorAleatorio && caixa4 < 1:
						caixa_linha_4.position.x = list1[j]
						caixa_linha_4.position.y = 415
						listNumAleatorio.append(valorAleatorio)
						caixa4 += 1
				if caixa4 == 1:
					caixaAl5()

func caixaAl5() -> void:
	if listNumAleatorio[0] != valorAleatorio:
		if listNumAleatorio[1] != valorAleatorio:
			if listNumAleatorio[2] != valorAleatorio:
				if listNumAleatorio[3] != valorAleatorio:
						for u in range(0, list1.size()):
							if u == valorAleatorio && caixa5 < 1:
								caixa_linha_5.position.x = list1[u]
								caixa_linha_5.position.y = 506
								listNumAleatorio.append(valorAleatorio)
								caixa5 += 1
						if caixa5 == 1:
							caixaAl6()

func caixaAl6() -> void:
	if listNumAleatorio[0] != valorAleatorio:
		if listNumAleatorio[1] != valorAleatorio:
			if listNumAleatorio[2] != valorAleatorio:
				if listNumAleatorio[3] != valorAleatorio:
					if listNumAleatorio[4] != valorAleatorio:
						if valorAleatorio != 6:
							for b in range(0, list1.size()):
									caixa_linha_6.position.x = list1[b]
									caixa_linha_6.position.y = 596
									listNumAleatorio.append(valorAleatorio)
									caixa6 += 1
							if caixa6 == 1:
								portalSaida()

func portalSaida() -> void:
	for l in range(0, list1.size()):
		if l == valorAleatorio:
			portal.position.x = list1[l]
			portal.position.y = 54
			listNumAleatorio.append(valorAleatorio)

#sistema de adicionar mais caixars
func _on_carro_cont_ponto(pontos):
	if pontos > 50:
		#print('Teste caixas',pontos)
		pass
