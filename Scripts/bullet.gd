extends Area2D

var distance_travled = 0

func _physics_process(delta):
	const SPEED = 600
	const RANGE = 1200
	

	var direction = Vector2.RIGHT.rotated(rotation)
	position += direction * SPEED * delta
	distance_travled += SPEED * delta
	
	if distance_travled > RANGE:
		queue_free()


func _on_body_entered(body):
	queue_free()
	if body.has_method("takeDamage"):
		body.takeDamage()
	
func damage():
	queue_free()
