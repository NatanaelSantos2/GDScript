extends Node

var hp:int = 3
@onready var texto:Label = $texto


#Função quando inicar
func _ready():
	for h in 5:
		texto.text = str(hp)#str() para converser em String
		hp -= 1
		await get_tree().create_timer(1).timeout
	#while hp > 0:
		#print(hp)
		#hp -= 1 #Decremtna

#func _ready():
	#texto.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	#texto.text = 'Ola mundo!'
	
func _process(_delta):
	if Input.is_action_just_pressed("btn_left"):
		print("Esquerda")
