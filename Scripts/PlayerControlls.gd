extends CharacterBody2D

var facing_right = false
var facing_left = false
var facing_up = false
var facing_down = true
var attacking  = false
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
	
	elif Input.is_key_pressed(KEY_SPACE):
		if facing_up == true:
			attack()
			%AnimatedSprite2D.play("attackBack")
		elif facing_down == true:
			attack()
			%AnimatedSprite2D.play("attackForward")
		elif facing_right == true:
			attack()
			%AnimatedSprite2D.scale.x = 0.8
			%AnimatedSprite2D.play("attackSide")
		elif  facing_left == true:
			attack()
			%AnimatedSprite2D.scale.x = -0.8
			%AnimatedSprite2D.play("attackSide")
		
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
			
	
		
func _process(_delta):
	
	%Label.text = str(inventory.floorNum)
	
	while Input.is_key_pressed(KEY_SPACE):
		attacking = true
		break
	
	
	if PlayerHealth.health == 5:
		%Heart.visible = true
		%Heart2.visible = true
		%Heart3.visible = true
		%Heart4.visible = true
		%Heart5.visible = true
	elif PlayerHealth.health == 4:
		%Heart.visible = false
		%Heart2.visible = true
		%Heart3.visible = true
		%Heart4.visible = true
		%Heart5.visible = true
	elif PlayerHealth.health == 3:
		%Heart.visible = false
		%Heart2.visible = false
		%Heart3.visible = true
		%Heart4.visible = true
		%Heart5.visible = true
	elif PlayerHealth.health == 2:
		%Heart.visible = false
		%Heart2.visible = false
		%Heart3.visible = false
		%Heart4.visible = true
		%Heart5.visible = true
	elif PlayerHealth.health == 1:
		%Heart.visible = false
		%Heart2.visible = false
		%Heart3.visible = false
		%Heart4.visible = false
		%Heart5.visible = true
	elif PlayerHealth.health == 0:
		%Heart.visible = false
		%Heart2.visible = false
		%Heart3.visible = false
		%Heart4.visible = false
		%Heart5.visible = false
		%AnimatedSprite2D.play("die")
		
	
func pickUpGold():
	inventory.gold += 1

func takeDamage():
	PlayerHealth.health -= 1

func attack():
	const SWORD = preload("res://Scenes/sword.tscn")
	var Attack = SWORD.instantiate()
	Attack.position = %AnimatedSprite2D.position
	%AnimatedSprite2D.add_child(Attack)
