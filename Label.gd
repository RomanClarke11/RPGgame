extends Label
@onready var inventory = get_node("/root/Inventory")

func _on_button_pressed():
	queue_free()


func _on_button_2_pressed():
	inventory.pressedYes = true 
