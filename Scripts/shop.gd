extends Node2D
const mainLevel = "res://Scenes/main_level.tscn"
@onready var inventory = get_node("/root/Inventory")
const Promt = preload("res://Scenes/sword.tscn")
var pressed = false 
var price 
var baught = false
var fairyPressed = false

func _process(_delta):
	if Input.is_key_pressed(KEY_ESCAPE):
			get_tree().change_scene_to_file(mainLevel)
	if inventory.fairyBottle == false:
		%FairyBottle.visible = true
		price = 100
		if fairyPressed == true:
			%buy.visible = true
			%price.text = str(price)
			if inventory.gold > price:
				if baught == true:
					inventory.fairyBottle = true
					inventory.gold -= price
					print_debug("buy fairy")
					%FairyBottle.visible = false
	if inventory.shopItems[0] == "boot":
		%Boot.visible = true
		price = 20
		if pressed == true:
			
			%buy.visible = true 
			%price.text = str(price)
			if inventory.gold > price:
				if baught == true:
					inventory.playerSpeed += 150 
					inventory.bootsON = true 
					%Boot.queue_free()
					inventory.shopItems.pop_front()
					print_debug(inventory.shopItems)
					inventory.pressedYes = false 
					inventory.gold -= price
	elif inventory.shopItems[0] == "heart":
		pass



func _on_area_2d_mouse_entered():
	if inventory.shopItems[0] == "boot":
		%Boot.scale.x += 1
		%Boot.scale.y += 1

func _on_area_2d_mouse_exited():
	if inventory.shopItems[0] == "boot":
		%Boot.scale.x -= 1
		%Boot.scale.y -= 1


func _on_button_pressed():
	pressed = true


func _on_button_2_pressed():
	pressed = false
	fairyPressed = false
	%buy.visible = false


func _on_yes_pressed():
	baught = true
	await get_tree().create_timer(0.01).timeout
	%buy.visible = false
	


func _on_fairy_button_pressed():
	fairyPressed = true
