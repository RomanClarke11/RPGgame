extends Node2D

var mobNums
var roomUsed = false
@onready var inventory = get_node("/root/Inventory")
signal doorKill
const DOORUP = preload("res://Scenes/door_top.tscn")
const DOORSIDE = preload("res://Scenes/door_side.tscn")
func _on_area_2d_body_entered(body):
	while roomUsed == false:
		if body.has_method("pickUpGold"):
			spawnDoors()
			spawnMobs()
			inventory.roomKills = 0
			roomUsed = true
		

func spawnMobs():
	for i in range(mobNums):
		var duck = preload("res://Scenes/duck.tscn").instantiate()
		%PathFollow2D.progress_ratio = randf()
		duck.position = %PathFollow2D.position
		call_deferred("add_child", duck)
	
func _process(_delta):
	if inventory.roomKills >= mobNums:
		inventory.killDoors = true
		

func _ready():
	mobNums = randi_range(1, 4)
	
func spawnDoors():
	var doorUp1 = DOORUP.instantiate()
	doorUp1.position = %doorUp.position
	call_deferred("add_child", doorUp1)
	var doorUp = DOORUP.instantiate()
	doorUp.position = %doorUp.position
	call_deferred("add_child", doorUp)
	var doorDown = DOORUP.instantiate()
	doorDown.position = %doorDown.position
	call_deferred("add_child", doorDown)
	var doorLeft = DOORSIDE.instantiate()
	doorLeft.position = %doorLeft.position
	call_deferred("add_child", doorLeft)
	var doorRight = DOORSIDE.instantiate()
	doorRight.position = %doorRight.position
	call_deferred("add_child", doorRight)
