extends CharacterBody2D

var facing_right = false
var facing_left = false
var facing_up = false
var facing_down = true
var attacking  = false
var walking = true 
const dead = "res://Scenes/death_level.tscn"
@onready var sword = 1
@onready var inventory = get_node("/root/Inventory")
@onready var PlayerHealth = get_node("/root/Inventory")



func _physics_process(_delta):
	

	
	var direction = Input.get_vector("move_left", "move_right", "move_up", "move_down")
	velocity = direction * inventory.playerSpeed
	move_and_slide()
	
	if Input.is_key_pressed(KEY_UP):
		facing_right = false
		facing_left = false
		facing_up = true
		facing_down = false
		
	if Input.is_key_pressed(KEY_DOWN):
		facing_right = false
		facing_left = false
		facing_up = false
		facing_down = true
		
	if Input.is_key_pressed(KEY_RIGHT):
		facing_right = true
		facing_left = false
		facing_up = false
		facing_down = false
		
	if Input.is_key_pressed(KEY_LEFT):
		facing_right = false
		facing_left = true
		facing_up = false
		facing_down = false

			
			

			
	while(walking == true):
		if velocity.length() > 0.0:
			if facing_up == true:
				%AnimatedSprite2D.play("walkBack")
			elif facing_down == true:
				%AnimatedSprite2D.play("walkForward")
			elif facing_right == true:
				%AnimatedSprite2D.scale.x = 0.8
				%AnimatedSprite2D.play("walkSide")
			elif facing_left == true:
				%AnimatedSprite2D.scale.x = -0.8
				%AnimatedSprite2D.play("walkSide")
	

		
		else:
			if facing_up == true:
				%AnimatedSprite2D.play("idle back")
			elif facing_down == true:
				%AnimatedSprite2D.play("idleForward")
			elif facing_right == true:
				%AnimatedSprite2D.scale.x = 0.8
				%AnimatedSprite2D.play("idleSide")
			elif facing_left == true:
				%AnimatedSprite2D.scale.x = -0.8
				%AnimatedSprite2D.play("idleSide")
		break
		
func _process(_delta):
	swingSword()
	
	while Input.is_key_pressed(KEY_SPACE):
		attacking = true
		break
		

	if PlayerHealth.health == 0:
		if inventory.fairyBottle == true:
			%AnimatedSprite2D.play("fairy")
			await get_tree().create_timer(3.0).timeout
			PlayerHealth.health = 5
			inventory.fairyBottle = true
		else:
			get_tree().change_scene_to_file(dead)
	
	
		
	
func pickUpGold():
	inventory.gold += 1

func takeDamage():
	inventory.playerHit = true 
	

func attack():
	const SWORD = preload("res://Scenes/sword.tscn")
	var Attack = SWORD.instantiate()
	Attack.position = %AnimatedSprite2D.position
	%AnimatedSprite2D.add_child(Attack)
	
	
func _ready():
	pass
func swingSword():
	if Input.is_key_pressed(KEY_SPACE):
		if facing_up == true:
			walking = false 
			attack()
			%AnimatedSprite2D.play("attackBack")
			await get_tree().create_timer(0.4).timeout
			walking = true
		elif facing_down == true:
			walking = false
			attack()
			%AnimatedSprite2D.play("attackForward")
			await get_tree().create_timer(0.6).timeout
			walking = true
		elif facing_right == true:
			walking = false
			attack()
			%AnimatedSprite2D.scale.x = 0.8
			%AnimatedSprite2D.play("attackSide")
			await get_tree().create_timer(0.6).timeout
			walking = true 
		elif  facing_left == true:
			walking = false 
			attack()
			%AnimatedSprite2D.scale.x = -0.8
			%AnimatedSprite2D.play("attackSide")
			await get_tree().create_timer(0.6).timeout
			walking = true 

