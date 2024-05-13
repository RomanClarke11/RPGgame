extends Node2D
const mainLevel = "res://Scenes/main_level.tscn"
@onready var inventory = get_node("/root/Inventory")


func _process(_delta):
	if Input.is_key_pressed(KEY_ESCAPE):
			get_tree().change_scene_to_file(mainLevel)



func _on_area_2d_mouse_entered():
	%Boot.scale.x += 1
	$Boot.scale.y += 1

func _on_area_2d_mouse_exited():
	%Botot.scale.x -= 1
	$Boot.scale.y -= 1


func _on_button_pressed():
		print_debug("boots on")
		inventory.playerSpeed += 150 
		inventory.bootsON = true 
		%Boot.queue_free()
