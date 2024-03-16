extends Node

@onready var node_3d = $"."

@export var sensi = 1

var ultimoValorX = 0
var ultimoValorY = 0

var validarToque = false

func _input(event):
	if validarToque == true:
		if event is InputEventScreenDrag:
			#Visão direita e esquerda
			if event.position.x > ultimoValorX:
				node_3d.rotation_degrees.y += -sensi
				ultimoValorX = event.position.x

			if event.position.x < ultimoValorX:
				node_3d.rotation_degrees.y += sensi
				ultimoValorX = event.position.x
			
			#Visão de cima e baixo
			if event.position.y > ultimoValorY:
				node_3d.rotation_degrees.x += -sensi
				ultimoValorY = event.position.y
				
			if event.position.y < ultimoValorY:
				node_3d.rotation_degrees.x += sensi
				ultimoValorY = event.position.y 

func _on_area_toque_pressed():
	validarToque = true

func _on_area_toque_released():
	validarToque = false
