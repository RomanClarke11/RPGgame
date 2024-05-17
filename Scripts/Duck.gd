extends CharacterBody2D

@onready var player = get_node("/root/RougeLikeRoom/Player")
@onready var inventory = get_node("/root/Inventory")

func _physics_process(_delta):
	var PlayerPosition = player.global_position
	if PlayerPosition > global_position:
		%AnimatedSprite2D.scale.x = 0.462
		var direction = global_position.direction_to(player.global_position)
		velocity = direction * 300.0
		move_and_slide()
	elif PlayerPosition < global_position:
		%AnimatedSprite2D.scale.x = -0.462
		var direction = global_position.direction_to(player.global_position)
		velocity = direction * 300.0
		move_and_slide()
	
func _on_area_2d_body_entered(body):
	if body.has_method("takeDamage"):
		body.takeDamage()
		
func EnemyTakeDamage():
	inventory.mobKill += 1
	inventory.roomKill += 1
	const GOLD_SCENE = preload("res://Scenes/gold.tscn")
	var gold = GOLD_SCENE.instantiate()
	get_parent().call_deferred("add_child", gold)
	gold.position = global_position
	queue_free()


