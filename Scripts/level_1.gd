extends Node2D


const mainLevel = "res://Scenes/main_level.tscn"
const level1 = "res://Scenes/level_1.tscn"

func _process(_delta):
	if Input.is_key_pressed(KEY_ESCAPE):
			get_tree().change_scene_to_file(mainLevel)
