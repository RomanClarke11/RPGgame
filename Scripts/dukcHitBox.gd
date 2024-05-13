extends Area2D
@onready var inventory = get_node("/root/Inventory")

func EnemyTakeDamage():
	inventory.mobKills += 1
	inventory.roomKills += 1
	const GOLD_SCENE = preload("res://Scenes/gold.tscn")
	var gold = GOLD_SCENE.instantiate()
	get_parent().get_parent().call_deferred("add_child", gold)
	gold.global_position = position
	get_parent().queue_free()
	queue_free()
