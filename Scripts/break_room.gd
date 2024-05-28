extends Node2D
const rougeLikeRooms = "res://Scenes/rouge_like_room.tscn"
@onready var inventory = get_node("/root/Inventory")
const mainRoom = "res://Scenes/main_level.tscn"
var NPCSpawn
var Person = 0
var NPC = false
var doorhit = false

func _on_portal_body_entered(_body):
	get_tree().change_scene_to_file(rougeLikeRooms)
	inventory.floorNum += 1


func _on_portal_1_body_entered(body):
	if body.has_method("pickUpGold"):
		get_tree().change_scene_to_file(mainRoom)

func _ready():
	%dave.visible = false
	%cell.play("empty")
	%AnimatedSprite2D.scale.x = -2.26
	NPCSpawn = randi_range(32,32)
	if NPCSpawn == 32:
		Person = randi_range(1,1)
		if Person == 1:
			%cell.play("dave")
			
		elif Person == 2:
			print_debug("person 2 in cage")
			%cell.play("man")



func Open():
	%AnimatedSprite2D.play("open")
	await get_tree().create_timer(2.0).timeout
	%cell.play("empty")
	if Person == 1:
		inventory.person1Free = true
		%dave.visible = true
	elif Person == 2:
		inventory.person2Free = true



func _on_area_2d_area_entered(area):
	if area.has_method("Sword"):
		Open()


func _on_portal_1_area_entered(_area):
	inventory.daveInMainLevel = true
	inventory.person1Free = false
	%dave.queue_free()
