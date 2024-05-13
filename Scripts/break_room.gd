extends Node2D
const rougeLikeRooms = "res://Scenes/rouge_like_room.tscn"
@onready var inventory = get_node("/root/Inventory")
const mainRoom = "res://Scenes/main_level.tscn"

func _on_portal_body_entered(body):
	get_tree().change_scene_to_file(rougeLikeRooms)
	inventory.floorNum += 1


func _on_portal_1_body_entered(body):
	get_tree().change_scene_to_file(mainRoom)
