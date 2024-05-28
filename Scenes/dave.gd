extends CharacterBody2D

@onready var inventory = get_node("/root/Inventory")
var talking = false 

func isNPC():
	pass
func _process(_delta):
	if inventory.person1Free == true:
		%Dave.position.x -= 3


func _on_area_2d_2_body_entered(body):
	if body.has_method("pickUpGold"):
		talking = true


func _on_area_2d_2_body_exited(body):
	if body.has_method("pickUpGold"):
		talking = false

func _physics_process(_delta):
	if talking == true:
		if Input.is_action_just_pressed("z"):
			DialogueManager.show_example_dialogue_balloon(load("res://scripts/DaveText.dialogue"), "start")
