extends Node2D
var roomNumber
var i = 0 
var RoomsInUse = 0
var rooms
var OneBeenUsed = false
var TwoBeenUsed = false
var ThreeBeenUsed = false
var FourBeenUsed = false
var FiveBeenUsed = false
var SixBeenUsed = false
var SevenBeenUsed = false
var EghitBeenUsed = false
var NineBeenUsed = false
@onready var PlayerHealth = get_node("/root/Inventory")
const ROOM1 = preload("res://Scenes/Rooms/room_1.tscn")
const ROOM2 = preload("res://Scenes/Rooms/room_2.tscn")
const ROOM3 = preload("res://Scenes/Rooms/room_3.tscn")
const ROOM4 = preload("res://Scenes/Rooms/room_4.tscn")
const ROOM5 = preload("res://Scenes/Rooms/room_5.tscn")
const ROOM6 = preload("res://Scenes/Rooms/room_6.tscn")
const ROOM7 = preload("res://Scenes/Rooms/room_7.tscn")
const ROOM8 = preload("res://Scenes/Rooms/room_8.tscn")
const ROOM9 = preload("res://Scenes/Rooms/room_9.tscn")
const ROOM10 = preload("res://Scenes/Rooms/room_10.tscn")
const ROOM11 = preload("res://Scenes/Rooms/room_11.tscn")
const ROOM12 = preload("res://Scenes/Rooms/room_12.tscn")
const ROOM13 = preload("res://Scenes/Rooms/room_13.tscn")
const ROOM14 = preload("res://Scenes/Rooms/room_14.tscn")
const ROOM15 = preload("res://Scenes/Rooms/room_15.tscn")
@onready var inventory = get_node("/root/Inventory")
const BREAKROOM = "res://Scenes/break_room.tscn"
const stairs = preload("res://Scenes/stair.tscn")




func _ready():
	if PlayerHealth.health == 5:
		%Camera2D/Heart2.play("5")
	elif PlayerHealth.health == 4:
		%Camera2D/Heart2.play("4")
	elif PlayerHealth.health == 3:
		%Camera2D/Heart2.play("3")
	elif PlayerHealth.health == 2:
		%Camera2D/Heart2.play("2")
	elif PlayerHealth.health == 1:
		%Camera2D/Heart2.play("1")
	elif PlayerHealth.health == 0:
		%Camera2D/Heart2.play("0")
	spawnRandRoom()

	
func spawnRandRoom():
	inventory.inDungeon = true 

	while RoomsInUse != 9:
		roomNumber = randi_range(1, 9)
		if roomNumber == 1 && OneBeenUsed == false:
			%ColorRect7.visible = false
			rooms = randi_range(1, 15)
			if rooms == 1:
				var Room1 = ROOM1.instantiate()
				Room1.position = %ColorRect7.position
				add_child(Room1)
			elif rooms == 2:
				var Room2 = ROOM2.instantiate()
				Room2.position = %ColorRect7.position
				add_child(Room2)
			elif rooms == 3:
				var Room3 = ROOM3.instantiate()
				Room3.position = %ColorRect7.position
				add_child(Room3)
			elif rooms == 4:
				var Room4 = ROOM4.instantiate()
				Room4.position = %ColorRect7.position
				add_child(Room4)
			elif rooms == 5:
				var Room5 = ROOM5.instantiate()
				Room5.position = %ColorRect7.position
				add_child(Room5)
			elif rooms == 6:
				var Room6 = ROOM6.instantiate()
				Room6.position = %ColorRect7.position
				add_child(Room6)
			elif rooms == 7:
				var Room7 = ROOM7.instantiate()
				Room7.position = %ColorRect7.position
				add_child(Room7)
			elif rooms == 8:
				var Room8 = ROOM8.instantiate()
				Room8.position = %ColorRect7.position
				add_child(Room8)
			elif rooms == 9:
				var Room9 = ROOM9.instantiate()
				Room9.position = %ColorRect7.position
				add_child(Room9)
			elif rooms == 10:
				var Room10 = ROOM10.instantiate()
				Room10.position = %ColorRect7.position
				add_child(Room10)
			elif rooms == 11:
				var Room11 = ROOM11.instantiate()
				Room11.position = %ColorRect7.position
				add_child(Room11)
			elif rooms == 12:
				var Room12 = ROOM12.instantiate()
				Room12.position = %ColorRect7.position
				add_child(Room12)
			elif rooms == 13:
				var Room13 = ROOM13.instantiate()
				Room13.position = %ColorRect7.position
				add_child(Room13)
			elif rooms == 14:
				var Room14 = ROOM14.instantiate()
				Room14.position = %ColorRect7.position
				add_child(Room14)
			elif rooms == 15:
				var Room15 = ROOM15.instantiate()
				Room15.position = %ColorRect7.position
				add_child(Room15)
			OneBeenUsed = true
			RoomsInUse += 1
			
		elif roomNumber == 2 && TwoBeenUsed == false:
			%ColorRect8.visible = false

			rooms = randi_range(1, 15)
			if rooms == 1:
				var Room1 = ROOM1.instantiate()
				Room1.position = %ColorRect8.position
				add_child(Room1)
			elif rooms == 2:
				var Room2 = ROOM2.instantiate()
				Room2.position = %ColorRect8.position
				add_child(Room2)
			elif rooms == 3:
				var Room3 = ROOM3.instantiate()
				Room3.position = %ColorRect8.position
				add_child(Room3)
			elif rooms == 4:
				var Room4 = ROOM4.instantiate()
				Room4.position = %ColorRect8.position
				add_child(Room4)
			elif rooms == 5:
				var Room5 = ROOM5.instantiate()
				Room5.position = %ColorRect8.position
				add_child(Room5)
			elif rooms == 6:
				var Room6 = ROOM6.instantiate()
				Room6.position = %ColorRect8.position
				add_child(Room6)
			elif rooms == 7:
				var Room7 = ROOM7.instantiate()
				Room7.position = %ColorRect8.position
				add_child(Room7)
			elif rooms == 8:
				var Room8 = ROOM8.instantiate()
				Room8.position = %ColorRect8.position
				add_child(Room8)
			elif rooms == 9:
				var Room9 = ROOM9.instantiate()
				Room9.position = %ColorRect8.position
				add_child(Room9)
			elif rooms == 10:
				var Room10 = ROOM10.instantiate()
				Room10.position = %ColorRect8.position
				add_child(Room10)
			elif rooms == 11:
				var Room11 = ROOM11.instantiate()
				Room11.position = %ColorRect8.position
				add_child(Room11)
			elif rooms == 12:
				var Room12 = ROOM12.instantiate()
				Room12.position = %ColorRect8.position
				add_child(Room12)
			elif rooms == 13:
				var Room13 = ROOM13.instantiate()
				Room13.position = %ColorRect8.position
				add_child(Room13)
			elif rooms == 14:
				var Room14 = ROOM14.instantiate()
				Room14.position = %ColorRect8.position
				add_child(Room14)
			elif rooms == 15:
				var Room15 = ROOM15.instantiate()
				Room15.position = %ColorRect8.position
				add_child(Room15)
			TwoBeenUsed = true
			RoomsInUse += 1
		elif roomNumber == 3 && ThreeBeenUsed == false:
			%ColorRect9.visible = false

			rooms = randi_range(1, 15)
			if rooms == 1:
				var Room1 = ROOM1.instantiate()
				Room1.position = %ColorRect9.position
				add_child(Room1)
			elif rooms == 2:
				var Room2 = ROOM2.instantiate()
				Room2.position = %ColorRect9.position
				add_child(Room2)
			elif rooms == 3:
				var Room3 = ROOM3.instantiate()
				Room3.position = %ColorRect9.position
				add_child(Room3)
			elif rooms == 4:
				var Room4 = ROOM4.instantiate()
				Room4.position = %ColorRect9.position
				add_child(Room4)
			elif rooms == 5:
				var Room5 = ROOM5.instantiate()
				Room5.position = %ColorRect9.position
				add_child(Room5)
			elif rooms == 6:
				var Room6 = ROOM6.instantiate()
				Room6.position = %ColorRect9.position
				add_child(Room6)
			elif rooms == 7:
				var Room7 = ROOM7.instantiate()
				Room7.position = %ColorRect9.position
				add_child(Room7)
			elif rooms == 8:
				var Room8 = ROOM8.instantiate()
				Room8.position = %ColorRect9.position
				add_child(Room8)
			elif rooms == 9:
				var Room9 = ROOM9.instantiate()
				Room9.position = %ColorRect9.position
				add_child(Room9)
			elif rooms == 10:
				var Room10 = ROOM10.instantiate()
				Room10.position = %ColorRect9.position
				add_child(Room10)
			elif rooms == 11:
				var Room11 = ROOM11.instantiate()
				Room11.position = %ColorRect9.position
				add_child(Room11)
			elif rooms == 12:
				var Room12 = ROOM12.instantiate()
				Room12.position = %ColorRect9.position
				add_child(Room12)
			elif rooms == 13:
				var Room13 = ROOM13.instantiate()
				Room13.position = %ColorRect9.position
				add_child(Room13)
			elif rooms == 14:
				var Room14 = ROOM14.instantiate()
				Room14.position = %ColorRect9.position
				add_child(Room14)
			elif rooms == 15:
				var Room15 = ROOM15.instantiate()
				Room15.position = %ColorRect9.position
				add_child(Room15)
			ThreeBeenUsed = true
			RoomsInUse += 1

		elif roomNumber == 4 && FourBeenUsed == false:
			%ColorRect3.visible = false

			rooms = randi_range(1, 15)
			if rooms == 1:
				var Room1 = ROOM1.instantiate()
				Room1.position = %ColorRect3.position
				add_child(Room1)
			elif rooms == 2:
				var Room2 = ROOM2.instantiate()
				Room2.position = %ColorRect3.position
				add_child(Room2)
			elif rooms == 3:
				var Room3 = ROOM3.instantiate()
				Room3.position = %ColorRect3.position
				add_child(Room3)
			elif rooms == 4:
				var Room4 = ROOM4.instantiate()
				Room4.position = %ColorRect3.position
				add_child(Room4)
			elif rooms == 5:
				var Room5 = ROOM5.instantiate()
				Room5.position = %ColorRect3.position
				add_child(Room5)
			elif rooms == 6:
				var Room6 = ROOM6.instantiate()
				Room6.position = %ColorRect3.position
				add_child(Room6)
			elif rooms == 7:
				var Room7 = ROOM7.instantiate()
				Room7.position = %ColorRect3.position
				add_child(Room7)
			elif rooms == 8:
				var Room8 = ROOM8.instantiate()
				Room8.position = %ColorRect3.position
				add_child(Room8)
			elif rooms == 9:
				var Room9 = ROOM9.instantiate()
				Room9.position = %ColorRect3.position
				add_child(Room9)
			elif rooms == 10:
				var Room10 = ROOM10.instantiate()
				Room10.position = %ColorRect3.position
				add_child(Room10)
			elif rooms == 11:
				var Room11 = ROOM11.instantiate()
				Room11.position = %ColorRect3.position
				add_child(Room11)
			elif rooms == 12:
				var Room12 = ROOM12.instantiate()
				Room12.position = %ColorRect3.position
				add_child(Room12)
			elif rooms == 13:
				var Room13 = ROOM13.instantiate()
				Room13.position = %ColorRect3.position
				add_child(Room13)
			elif rooms == 14:
				var Room14 = ROOM14.instantiate()
				Room14.position = %ColorRect3.position
				add_child(Room14)
			elif rooms == 15:
				var Room15 = ROOM15.instantiate()
				Room15.position = %ColorRect3.position
				add_child(Room15)
			FourBeenUsed = true
			RoomsInUse += 1

		elif roomNumber == 5 && FiveBeenUsed == false:
			%ColorRect.visible = false

			rooms = randi_range(1, 15)
			if rooms == 1:
				var Room1 = ROOM1.instantiate()
				Room1.position = %ColorRect.position
				add_child(Room1)
			elif rooms == 2:
				var Room2 = ROOM2.instantiate()
				Room2.position = %ColorRect.position
				add_child(Room2)
			elif rooms == 3:
				var Room3 = ROOM3.instantiate()
				Room3.position = %ColorRect.position
				add_child(Room3)
			elif rooms == 4:
				var Room4 = ROOM4.instantiate()
				Room4.position = %ColorRect.position
				add_child(Room4)
			elif rooms == 5:
				var Room5 = ROOM5.instantiate()
				Room5.position = %ColorRect.position
				add_child(Room5)
			elif rooms == 6:
				var Room6 = ROOM6.instantiate()
				Room6.position = %ColorRect.position
				add_child(Room6)
			elif rooms == 7:
				var Room7 = ROOM7.instantiate()
				Room7.position = %ColorRect.position
				add_child(Room7)
			elif rooms == 8:
				var Room8 = ROOM8.instantiate()
				Room8.position = %ColorRect.position
				add_child(Room8)
			elif rooms == 9:
				var Room9 = ROOM9.instantiate()
				Room9.position = %ColorRect.position
				add_child(Room9)
			elif rooms == 10:
				var Room10 = ROOM10.instantiate()
				Room10.position = %ColorRect.position
				add_child(Room10)
			elif rooms == 11:
				var Room11 = ROOM11.instantiate()
				Room11.position = %ColorRect.position
				add_child(Room11)
			elif rooms == 12:
				var Room12 = ROOM12.instantiate()
				Room12.position = %ColorRect.position
				add_child(Room12)
			elif rooms == 13:
				var Room13 = ROOM13.instantiate()
				Room13.position = %ColorRect.position
				add_child(Room13)
			elif rooms == 14:
				var Room14 = ROOM14.instantiate()
				Room14.position = %ColorRect.position
				add_child(Room14)
			elif rooms == 15:
				var Room15 = ROOM15.instantiate()
				Room15.position = %ColorRect.position
				add_child(Room15)
			FiveBeenUsed = true
			RoomsInUse += 1

		elif roomNumber == 6 && SixBeenUsed == false:
			%ColorRect2.visible = false

			rooms = randi_range(1, 15)
			if rooms == 1:
				var Room1 = ROOM1.instantiate()
				Room1.position = %ColorRect2.position
				add_child(Room1)
			elif rooms == 2:
				var Room2 = ROOM2.instantiate()
				Room2.position = %ColorRect2.position
				add_child(Room2)
			elif rooms == 3:
				var Room3 = ROOM3.instantiate()
				Room3.position = %ColorRect2.position
				add_child(Room3)
			elif rooms == 4:
				var Room4 = ROOM4.instantiate()
				Room4.position = %ColorRect2.position
				add_child(Room4)
			elif rooms == 5:
				var Room5 = ROOM5.instantiate()
				Room5.position = %ColorRect2.position
				add_child(Room5)
			elif rooms == 6:
				var Room6 = ROOM6.instantiate()
				Room6.position = %ColorRect2.position
				add_child(Room6)
			elif rooms == 7:
				var Room7 = ROOM7.instantiate()
				Room7.position = %ColorRect2.position
				add_child(Room7)
			elif rooms == 8:
				var Room8 = ROOM8.instantiate()
				Room8.position = %ColorRect2.position
				add_child(Room8)
			elif rooms == 9:
				var Room9 = ROOM9.instantiate()
				Room9.position = %ColorRect2.position
				add_child(Room9)
			elif rooms == 10:
				var Room10 = ROOM10.instantiate()
				Room10.position = %ColorRect2.position
				add_child(Room10)
			elif rooms == 11:
				var Room11 = ROOM11.instantiate()
				Room11.position = %ColorRect2.position
				add_child(Room11)
			elif rooms == 12:
				var Room12 = ROOM12.instantiate()
				Room12.position = %ColorRect2.position
				add_child(Room12)
			elif rooms == 13:
				var Room13 = ROOM13.instantiate()
				Room13.position = %ColorRect2.position
				add_child(Room13)
			elif rooms == 14:
				var Room14 = ROOM14.instantiate()
				Room14.position = %ColorRect2.position
				add_child(Room14)
			elif rooms == 15:
				var Room15 = ROOM15.instantiate()
				Room15.position = %ColorRect2.position
				add_child(Room15)
			SixBeenUsed = true
			RoomsInUse += 1

		elif roomNumber == 7 && SevenBeenUsed == false:
			%ColorRect4.visible = false

			rooms = randi_range(1, 15)
			if rooms == 1:
				var Room1 = ROOM1.instantiate()
				Room1.position = %ColorRect4.position
				add_child(Room1)
			elif rooms == 2:
				var Room2 = ROOM2.instantiate()
				Room2.position = %ColorRect4.position
				add_child(Room2)
			elif rooms == 3:
				var Room3 = ROOM3.instantiate()
				Room3.position = %ColorRect4.position
				add_child(Room3)
			elif rooms == 4:
				var Room4 = ROOM4.instantiate()
				Room4.position = %ColorRect4.position
				add_child(Room4)
			elif rooms == 5:
				var Room5 = ROOM5.instantiate()
				Room5.position = %ColorRect4.position
				add_child(Room5)
			elif rooms == 6:
				var Room6 = ROOM6.instantiate()
				Room6.position = %ColorRect4.position
				add_child(Room6)
			elif rooms == 7:
				var Room7 = ROOM7.instantiate()
				Room7.position = %ColorRect4.position
				add_child(Room7)
			elif rooms == 8:
				var Room8 = ROOM8.instantiate()
				Room8.position = %ColorRect4.position
				add_child(Room8)
			elif rooms == 9:
				var Room9 = ROOM9.instantiate()
				Room9.position = %ColorRect4.position
				add_child(Room9)
			elif rooms == 10:
				var Room10 = ROOM10.instantiate()
				Room10.position = %ColorRect4.position
				add_child(Room10)
			elif rooms == 11:
				var Room11 = ROOM11.instantiate()
				Room11.position = %ColorRect4.position
				add_child(Room11)
			elif rooms == 12:
				var Room12 = ROOM12.instantiate()
				Room12.position = %ColorRect4.position
				add_child(Room12)
			elif rooms == 13:
				var Room13 = ROOM13.instantiate()
				Room13.position = %ColorRect4.position
				add_child(Room13)
			elif rooms == 14:
				var Room14 = ROOM14.instantiate()
				Room14.position = %ColorRect4.position
				add_child(Room14)
			elif rooms == 15:
				var Room15 = ROOM15.instantiate()
				Room15.position = %ColorRect4.position
				add_child(Room15)
			SevenBeenUsed = true
			RoomsInUse += 1

		elif roomNumber == 8 && EghitBeenUsed == false:
			%ColorRect5.visible = false

			rooms = randi_range(1, 15) 
			if rooms == 1:
				var Room1 = ROOM1.instantiate()
				Room1.position = %ColorRect5.position
				add_child(Room1)
			elif rooms == 2:
				var Room2 = ROOM2.instantiate()
				Room2.position = %ColorRect5.position
				add_child(Room2)
			elif rooms == 3:
				var Room3 = ROOM3.instantiate()
				Room3.position = %ColorRect5.position
				add_child(Room3)
			elif rooms == 4:
				var Room4 = ROOM4.instantiate()
				Room4.position = %ColorRect5.position
				add_child(Room4)
			elif rooms == 5:
				var Room5 = ROOM5.instantiate()
				Room5.position = %ColorRect5.position
				add_child(Room5)
			elif rooms == 6:
				var Room6 = ROOM6.instantiate()
				Room6.position = %ColorRect5.position
				add_child(Room6)
			elif rooms == 7:
				var Room7 = ROOM7.instantiate()
				Room7.position = %ColorRect5.position
				add_child(Room7)
			elif rooms == 8:
				var Room8 = ROOM8.instantiate()
				Room8.position = %ColorRect5.position
				add_child(Room8)
			elif rooms == 9:
				var Room9 = ROOM9.instantiate()
				Room9.position = %ColorRect5.position
				add_child(Room9)
			elif rooms == 10:
				var Room10 = ROOM10.instantiate()
				Room10.position = %ColorRect5.position
				add_child(Room10)
			elif rooms == 11:
				var Room11 = ROOM11.instantiate()
				Room11.position = %ColorRect5.position
				add_child(Room11)
			elif rooms == 12:
				var Room12 = ROOM12.instantiate()
				Room12.position = %ColorRect5.position
				add_child(Room12)
			elif rooms == 13:
				var Room13 = ROOM13.instantiate()
				Room13.position = %ColorRect5.position
				add_child(Room13)
			elif rooms == 14:
				var Room14 = ROOM14.instantiate()
				Room14.position = %ColorRect5.position
				add_child(Room14)
			elif rooms == 15:
				var Room15 = ROOM15.instantiate()
				Room15.position = %ColorRect5.position
				add_child(Room15)
			EghitBeenUsed = true
			RoomsInUse += 1

		elif roomNumber == 9 && NineBeenUsed == false:
			%ColorRect6.visible = false

			rooms = randi_range(1, 15)
			if rooms == 1:
				var Room1 = ROOM1.instantiate()
				Room1.position = %ColorRect6.position
				add_child(Room1)
			elif rooms == 2:
				var Room2 = ROOM2.instantiate()
				Room2.position = %ColorRect6.position
				add_child(Room2)
			elif rooms == 3:
				var Room3 = ROOM3.instantiate()
				Room3.position = %ColorRect6.position
				add_child(Room3)
			elif rooms == 4:
				var Room4 = ROOM4.instantiate()
				Room4.position = %ColorRect6.position
				add_child(Room4)
			elif rooms == 5:
				var Room5 = ROOM5.instantiate()
				Room5.position = %ColorRect6.position
				add_child(Room5)
			elif rooms == 6:
				var Room6 = ROOM6.instantiate()
				Room6.position = %ColorRect6.position
				add_child(Room6)
			elif rooms == 7:
				var Room7 = ROOM7.instantiate()
				Room7.position = %ColorRect6.position
				add_child(Room7)
			elif rooms == 8:
				var Room8 = ROOM8.instantiate()
				Room8.position = %ColorRect6.position
				add_child(Room8)
			elif rooms == 9:
				var Room9 = ROOM9.instantiate()
				Room9.position = %ColorRect6.position
				add_child(Room9)
			elif rooms == 10:
				var Room10 = ROOM10.instantiate()
				Room10.position = %ColorRect6.position
				add_child(Room10)
			elif rooms == 11:
				var Room11 = ROOM11.instantiate()
				Room11.position = %ColorRect6.position
				add_child(Room11)
			elif rooms == 12:
				var Room12 = ROOM12.instantiate()
				Room12.position = %ColorRect6.position
				add_child(Room12)
			elif rooms == 13:
				var Room13 = ROOM13.instantiate()
				Room13.position = %ColorRect6.position
				add_child(Room13)
			elif rooms == 14:
				var Room14 = ROOM14.instantiate()
				Room14.position = %ColorRect6.position
				add_child(Room14)
			elif rooms == 15:
				var Room15 = ROOM15.instantiate()
				Room15.position = %ColorRect6.position
				add_child(Room15)
			NineBeenUsed = true
			RoomsInUse += 1
	if roomNumber == 1:
			var stair = stairs.instantiate()
			stair.position = %ColorRect7.position
			add_child(stair)
	elif roomNumber == 2:
			var stair = stairs.instantiate()
			stair.position = %ColorRect8.position
			add_child(stair)
	elif roomNumber == 3:
			var stair = stairs.instantiate()
			stair.position = %ColorRect9.position
			add_child(stair)
	elif roomNumber == 4:
			var stair = stairs.instantiate()
			stair.position = %ColorRect3.position
			add_child(stair)
	elif roomNumber == 5:
			var stair = stairs.instantiate()
			stair.position = %ColorRect.position
			add_child(stair)
	elif roomNumber == 6:
			var stair = stairs.instantiate()
			stair.position = %ColorRect2.position
			add_child(stair)
	elif roomNumber == 7:
			var stair = stairs.instantiate()
			stair.position = %ColorRect4.position
			add_child(stair)
	elif roomNumber == 8:
			var stair = stairs.instantiate()
			stair.position = %ColorRect5.position
			add_child(stair)
	elif roomNumber == 9:
			var stair = stairs.instantiate()
			stair.position = %ColorRect6.position
			add_child(stair)        

	
func reload():
	get_tree().reload_current_scene()


func _process(delta):
	if inventory.playerHit == true:
		%Blood.visible = true
		%Camera2D/Blood.play("default")
		PlayerHealth.health -= 1
		inventory.playerHit = false
		await get_tree().create_timer(0.5).timeout
		%Blood.visible = false
	
	if PlayerHealth.health == 5:
		%Camera2D/Heart2.play("5")
	elif PlayerHealth.health == 4:
		%Camera2D/Heart2.play("4")
	elif PlayerHealth.health == 3:
		%Camera2D/Heart2.play("3")
	elif PlayerHealth.health == 2:
		%Camera2D/Heart2.play("2")
	elif PlayerHealth.health == 1:
		%Camera2D/Heart2.play("1")
	elif PlayerHealth.health == 0:
		%Camera2D/Heart2.play("0")
		
	if Inventory.inDungeon == true:
		%Label.visible = true
		%Label.text = str(inventory.floorNum)
	else:
		%Label.visible = false 




func _on_five_body_entered(body):
	if body.has_method("pickUpGold"):
		%Camera2D.position = %ColorRect.position


func _on_six_body_entered(body):
	if body.has_method("pickUpGold"):
		%Camera2D.position = %ColorRect2.position


func _on_four_body_entered(body):
	if body.has_method("pickUpGold"):
		%Camera2D.position = %ColorRect3.position

func _on_seven_body_entered(body):
	if body.has_method("pickUpGold"):
		%Camera2D.position = %ColorRect4.position


func _on_eight_body_entered(body):
	if body.has_method("pickUpGold"):
		%Camera2D.position = %ColorRect5.position


func _on_ninr_body_entered(body):
	if body.has_method("pickUpGold"):
		%Camera2D.position = %ColorRect6.position


func _on_one_body_entered(body):
	if body.has_method("pickUpGold"):
		%Camera2D.position = %ColorRect7.position


func _on_two_body_entered(body):
	if body.has_method("pickUpGold"):
		%Camera2D.position = %ColorRect8.position


func _on_three_body_entered(body):
	if body.has_method("pickUpGold"):
		%Camera2D.position = %ColorRect9.position



