extends Node2D
@onready var inventory = get_node("/root/Inventory")
const BREAKROOM = "res://Scenes/break_room.tscn"


func _on_area_2d_body_entered(_body):
	inventory.floorNum += 1
	if inventory.floorNum >= inventory.highestFloor:
		inventory.highestFloor = inventory.floorNum
	if inventory.floorNum == 5 || inventory.floorNum == 10 || inventory.floorNum == 15 || inventory.floorNum == 20 || inventory.floorNum == 25 || inventory.floorNum == 30 || inventory.floorNum == 35 || inventory.floorNum == 40 || inventory.floorNum == 45 || inventory.floorNum == 50:
		get_tree().change_scene_to_file(BREAKROOM)
	else:
		call_deferred("reload")

func reload():
	get_tree().reload_current_scene()
