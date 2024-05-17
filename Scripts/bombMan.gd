extends CharacterBody2D

@onready var player = get_node("/root/RougeLikeRoom/Player")
@onready var inventory = get_node("/root/Inventory")
var move = false

func _physics_process(_delta):
	while move == true:
		var PlayerPosition = player.global_position
		if PlayerPosition > global_position:
			%AnimatedSprite2D.scale.x = 2.22
			var direction = global_position.direction_to(player.global_position)
			velocity = direction * 300.0
			move_and_slide()
		elif PlayerPosition < global_position:
			%AnimatedSprite2D.scale.x = -2.22
			var direction = global_position.direction_to(player.global_position)
			velocity = direction * 300.0
			move_and_slide()
		break
	
func _on_follow_area_body_entered(body):
	if body.has_method("pickUpGold"):
		%AnimatedSprite2D.play("walk")
		move = true


func _on_explode_area_body_entered(body):
	if body.has_method("pickUpGold"):
		move = false
		%AnimatedSprite2D.play("boom")
		await get_tree().create_timer(1.9).timeout
		queue_free()


func _on_animated_sprite_2d_animation_finished():
	queue_free()
