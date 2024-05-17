extends Node2D

const rougelike = "res://Scenes/rouge_like_room.tscn"
const loadShop = "res://Scenes/shop.tscn"

func shop():
	pass



func _on_portal_body_entered(_body):
	%ProgressBar.visible = true
	%Timer.start(1)


func _on_portal_body_exited(_body):
	%ProgressBar.value = 0
	%Timer.stop()
	%ProgressBar.visible = false



func _on_timer_timeout():
	%ProgressBar.value += 1
	

func _process(_delta):   
	if %ProgressBar.value == 3:
		get_tree().change_scene_to_file(rougelike)


func _on_portal_2_body_entered(_body):
	get_tree().change_scene_to_file(loadShop)
