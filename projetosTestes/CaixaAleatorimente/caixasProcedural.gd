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
var caixa1 = 0
var caixa2 = 0
var caixa3 = 0
var caixa4 = 0
var caixa5 = 0
var caixa6 = 0
@onready var caixa_linha_1 = $caixaLinha1
@onready var caixa_linha_2 = $caixaLinha2
@onready var caixa_linha_3 = $caixaLinha3
@onready var caixa_linha_4 = $caixaLinha4
@onready var caixa_linha_5 = $caixaLinha5
@onready var caixa_linha_6 = $caixaLinha6

func _process(_delta):
	if contTentativas < 6:
		valorAleatorio = randi() % 12 + 0
		for a in range(0, list1.size()):
			if a == valorAleatorio && caixa1 < 1:
				caixa_linha_1.position.x = list1[a]
				caixa_linha_1.position.y = 144
				listNumAleatorio.append(valorAleatorio)
				caixa1 += 1
				
			for b in range(0, listNumAleatorio.size()):
				if listNumAleatorio[b] != valorAleatorio:
					for c in range(0, list1.size()):
						if  c == valorAleatorio && caixa2 < 1:
							caixa_linha_2.position.x = list1[c]
							caixa_linha_2.position.y = 235
							listNumAleatorio.append(valorAleatorio)
							caixa2 += 1
							
				for d in range(0, listNumAleatorio.size()):
					if listNumAleatorio[d] != valorAleatorio:
						for e in range(1, listNumAleatorio.size()):
							if listNumAleatorio[e] != valorAleatorio:
								for f in range(0, list1.size()):
									if f == valorAleatorio && caixa3 < 1:
										caixa_linha_3.position.x = list1[f]
										caixa_linha_3.position.y = 324
										listNumAleatorio.append(valorAleatorio)
										caixa3 += 1
					
					for g in range(0, listNumAleatorio.size()):
						if listNumAleatorio[g] != valorAleatorio:
							for h in range(1, listNumAleatorio.size()):
								if listNumAleatorio[h] != valorAleatorio:
									for i in range(2, listNumAleatorio.size()):
										if listNumAleatorio[i] != valorAleatorio:
											for j in range(0, list1.size()):
												if j == valorAleatorio && caixa4 < 1:
													caixa_linha_4.position.x = list1[j]
													caixa_linha_4.position.y = 415
													listNumAleatorio.append(valorAleatorio)
													caixa4 += 1
													
						for l in range(0, listNumAleatorio.size()):
							if listNumAleatorio[l] != valorAleatorio:
								for m in range(1, listNumAleatorio.size()):
									if listNumAleatorio[m] != valorAleatorio:
										for n in range(2, listNumAleatorio.size()):
											if listNumAleatorio[n] != valorAleatorio:
												for o in range(3, listNumAleatorio.size()):
													if listNumAleatorio[o] != valorAleatorio:
														for j in range(0, list1.size()):
															if j == valorAleatorio && caixa5 < 1:
																caixa_linha_5.position.x = list1[j]
																caixa_linha_5.position.y = 506
																listNumAleatorio.append(valorAleatorio)
																caixa5 += 1
							for t in range(0, listNumAleatorio.size()):
								if listNumAleatorio[t] != valorAleatorio:
									for m in range(1, listNumAleatorio.size()):
										if listNumAleatorio[m] != valorAleatorio:
											for n in range(2, listNumAleatorio.size()):
												if listNumAleatorio[n] != valorAleatorio:
													for o in range(3, listNumAleatorio.size()):
														if listNumAleatorio[o] != valorAleatorio:
															for y in range(4, listNumAleatorio.size()):
																if listNumAleatorio[y] != valorAleatorio:
																	for j in range(0, list1.size()):
																		if j == valorAleatorio && caixa6 < 1:
																			caixa_linha_6.position.x = list1[j]
																			caixa_linha_6.position.y = 596
																			listNumAleatorio.append(valorAleatorio)
																			caixa6 += 1

		contTentativas += 1
