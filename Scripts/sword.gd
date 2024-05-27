extends Area2D

func _ready():
	%Timer.start()


func _on_timer_timeout():
	%Timer.stop()
	queue_free()


func _on_area_entered(area):
	if area.has_method("EnemyTakeDamage"):
		area.EnemyTakeDamage()

func Sword():
	pass
