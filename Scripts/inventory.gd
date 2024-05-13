extends Node2D

var health = 5
var gold = 0
var mobKills = 0
var roomKills = 0
var floorNum = 1
var killDoors = false
var playerSpeed = 450
var bootsON = false 


func _process(_delta):
	
	if Input.is_key_pressed(KEY_E):
		%CanvasLayer.visible = true
		if gold > 0:
			%CanvasLayer/Gold.visible = true
			%CanvasLayer/Gold/goldCount.text = str(gold)
		else:
			%CanvasLayer/Gold.visible = false
	if Input.is_key_pressed(KEY_I):
		%CanvasLayer.visible = false
		
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

