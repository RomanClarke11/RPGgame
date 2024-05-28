extends Node2D
@onready var inventory = get_node("/root/Inventory")
const rougelike = "res://Scenes/rouge_like_room.tscn"
const loadShop = "res://Scenes/shop.tscn"
const BREAKROOM = "res://Scenes/break_room.tscn"

func shop():
	pass


func _ready():
	inventory.inDungeon = false 
	%Dave.visible = false
	if Inventory.daveInMainLevel == true:
		%Dave.visible = true
	

func _on_portal_body_entered(_body):
	%ProgressBar.visible = true
	%Timer.start(1)


func _on_portal_body_exited(_body):
	%ProgressBar.value = 0
	%Timer.stop()
	%ProgressBar.visible = false



func _on_timer_timeout():
	%ProgressBar.value += 1
	

func _process(_delta):   
	if %ProgressBar.value == 3:
		if inventory.startFloor == 5 || inventory.startFloor == 10 || inventory.startFloor== 15 || inventory.startFloor == 20 || inventory.startFloor == 25 || inventory.startFloor == 30 || inventory.startFloor == 35 || inventory.startFloor == 40 || inventory.startFloor == 45 || inventory.startFloor == 50:
			inventory.startFloor = 1
			get_tree().change_scene_to_file(BREAKROOM)
		else:
			get_tree().change_scene_to_file(rougelike)


func _on_portal_2_body_entered(_body):
	get_tree().change_scene_to_file(loadShop)



