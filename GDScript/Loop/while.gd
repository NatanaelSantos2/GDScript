extends Node

var i = 0
var arr = [10, 20 ,30, 40, 50, 60]
func _ready():
	while i < arr.size(): #Enquanto i for menor que o tamanho do arr
		print(arr[i])
		#print("Ola mundo")
		i+=1
