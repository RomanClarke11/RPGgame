extends Area2D

func _on_body_entered(body):
	if body.has_method("takeDamage"):
		body.takeDamage()
		
func EnemyTakeDamage():
	const GOLD_SCENE = preload("res://Scenes/gold.tscn")
	var gold = GOLD_SCENE.instantiate()
	get_parent().call_deferred("add_child", gold)
	gold.global_position = global_position
	queue_free()
