extends KinematicBody2D

var velocity : Vector2
var vida = 1

func _ready():
	velocity.x = -900
	velocity.y = 0

func _process(delta):
	move_and_slide(velocity,Vector2.UP)
	if velocity.x > 0:
		$AnimatedSprite.flip_h = false
	if velocity.x < 0:
		$AnimatedSprite.flip_h = true

func _on_Hitbox_body_entered(body):
	if body.name == 'Jugador':
		body.vida = 0
	#if group.name == 'arma':
		#vida = 0
		#$Tauro.visible = false
		
func _on_Zona1_body_entered(body):
	if body.name == 'Tauro':
		body.velocity.x *= -1

func _on_Zona2_body_entered(body):
	if body.name == 'Tauro':
		body.velocity.x *= -1
