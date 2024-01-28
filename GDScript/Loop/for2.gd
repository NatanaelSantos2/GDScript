extends Node

var arr = ["Maria","João","Marcos","Nael","Cal","Jo"]
var dic = {
	"p1":"Filmes",
	"p2":"Videos",
	"p3":"Memes"
}
func _ready():
	var quant = arr.size()
	for i in range(quant):
		print("Nome: ",arr[i]," Posição: ",i)
		
	dicc()

func dicc():
	for i in dic:
		print(dic[i])
