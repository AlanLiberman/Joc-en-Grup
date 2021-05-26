extends KinematicBody2D


var MAX_SPEED : float = -400.0
const GRAVITY : float = 25.0

var motion := Vector2()
var morir = false
var vida = 50


func _ready():
	pass
	
func _process(delta):
	motion.x = MAX_SPEED
	motion.y += GRAVITY
	motion = move_and_slide(motion,Vector2.UP)
	
	
	if motion.x > 0:
		$Area2D/CollisionShape2D.position.x = 120
		$RightRay/CollisionShape2D.position.x = -300
		$Enemic_lvl_5/AnimatedSprite.scale.x = -1
	if motion.x < 0:
		$RightRay/CollisionShape2D.position.x = -34
		$Area2D/CollisionShape2D.position.x = -120
		
func _on_RightRay_body_entered(body):
	if body.is_in_group('jugador'):
		MAX_SPEED *= -1
		$Enemic_lvl_5/AnimatedSprite.scale.x *= -1
		

func _on_Area2D_body_entered(body):
	if body.is_in_group('pared'):
		MAX_SPEED *= -1
		$Enemic_lvl_5/AnimatedSprite.scale.x *= -1
