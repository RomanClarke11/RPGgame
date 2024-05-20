extends Node2D
func _ready():
	print_debug("blood in")
	await get_tree().create_timer(0.6).timeout
	#queue_free()
