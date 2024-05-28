extends Node2D

var health = 5
var gold = 110
var mobKills = 0
var roomKills = 0
var floorNum = 1
var killDoors = false
var playerSpeed = 450
var bootsON = false 
var shopItems = ["boot", "heart", "sword"]
var pressedYes = false 
var fairyBottle = false
var person1Free = false
var person2Free = false
var daveInMainLevel = true
var giveDaveGold = false
var daveShopOpen = false
var highestFloor = 1
var startFloor = 1
var inDungeon = false 
var inventoryOpen = false
var playerHit = false 



func _physics_process(_delta):
	pass
			

func _process(_delta):

	if %CanvasLayer.visible == true:
		inventoryOpen = true
	elif %CanvasLayer.visible == false:
		inventoryOpen = false
		
		

	if inventoryOpen == false:
		if Input.is_action_just_pressed("E"):
			%CanvasLayer.visible = true
		
	if inventoryOpen == true:
		if Input.is_action_just_pressed("E"):
			%CanvasLayer.visible = false
			


	if gold > 0:
		%CanvasLayer/Gold.visible = true
		%CanvasLayer/Gold/goldCount.text = str(gold)
	else:
		%CanvasLayer/Gold.visible = false
	if fairyBottle == true:
		%CanvasLayer/FairyBottle.visible = true
	else:
		%CanvasLayer/FairyBottle.visible = false
		
		
	if health == 0:
		pass
	
	if bootsON == true:
		%CanvasLayer/Boot.visible = true 

func pickUpGold():
	gold += 1


func _on_area_2d_mouse_entered():
	if bootsON == true:
		%CanvasLayer/Boot/bootDiscription.visible = true 


func _on_area_2d_mouse_exited():
	if bootsON == true:
		%CanvasLayer/Boot/bootDiscription.visible = false

