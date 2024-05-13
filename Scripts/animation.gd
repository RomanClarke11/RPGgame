extends Sprite2D
signal animationFinnished
func walk_up():	
	%AnimationPlayer.play("WalkBack")
		
func walk_down():
	%AnimationPlayer.play("walkForward")

func walk_right():
	%AnimationPlayer.play("walkRight")
	
func idle_up():
	%AnimationPlayer.play("idleBack")

func idle_down():
	%AnimationPlayer.play("IdleForward")
	
func idle_right():
	%AnimationPlayer.play("WalkRight")
	
func attack_right():
	%AnimationPlayer.play("AttackSide")
	
func attack_down():
	%AnimationPlayer.play("AttackForward")
	
func attack_up():
	%AnimationPlayer.play("AttackBack")
