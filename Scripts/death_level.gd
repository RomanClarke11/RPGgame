extends Node2D
@onready var inventory = get_node("/root/Inventory")
const mainLevel = "res://Scenes/main_level.tscn"
var gold = Inventory.gold
var floorNUM = Inventory.floorNum
var highFloor = Inventory.highestFloor

func _ready():
	%Label3.text = str(gold)
	%Label4.text = str(floorNUM)
	%Label6.text = str(highFloor)


func _on_button_pressed():
	Inventory.inDungeon = false 
	Inventory.health = 5
	Inventory.floorNum = 1 
	Inventory.gold = 0
	
	get_tree().change_scene_to_file(mainLevel)


func _on_button_2_pressed():
	get_tree().quit()
