extends Node2D
var total_bloques: int = 64
var bloques_por_lado: int = 32
var tam_bloque: int = 16
var escena_cabeza_vibora = preload("res://escenas/cabeza_vibora/cabeza_vibora.tscn")
var escena_manzana = preload("res://escenas/Manzana/manzana.tscn")

# funciones para instanciar las escenas 
func instaciar_cabeza_vibora():
	var cabeza_vibora: CharacterBody2D = escena_cabeza_vibora.instantiate()
	cabeza_vibora.position = Vector2(-400,-300)
	add_child(cabeza_vibora)

func instanciar_manzana():
	var manzana: Node2D = escena_manzana.instantiate()
	var x: float = (randi() % total_bloques - bloques_por_lado - 1) * tam_bloque
	var y: float = (randi() % total_bloques - bloques_por_lado - 1) * tam_bloque
	manzana.position= Vector2(x,y)
	add_child(manzana)

func instanciar_manzanas(numero_manzanas: int):
	for i in range(numero_manzanas):
		instanciar_manzana()
	
func _ready() -> void:
	# instanciamos los hijos
	instaciar_cabeza_vibora()
	instanciar_manzanas(3)
