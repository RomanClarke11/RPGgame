
extends Node2D

@onready var inventory = get_node("/root/Inventory")

func _process(_delta):
	if inventory.killDoors == true:
		inventory.killDoors = false 
		queue_free()
		
