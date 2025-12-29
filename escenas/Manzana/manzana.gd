extends Node2D

@export var area_2d: Area2D

func _ready() -> void:
	area_2d.body_entered.connect(eliminarse)
	

func eliminarse(body):
	queue_free()
	if body.is_in_group("vibora"):
		body.comer_manzana()
