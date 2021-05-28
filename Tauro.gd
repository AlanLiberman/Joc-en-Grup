extends KinematicBody2D

var velocity : Vector2
var vida = 1
var morir = false

func _ready():
	velocity.x = -900
	velocity.y = 0

func _process(delta):
	move_and_slide(velocity,Vector2.UP)
	if velocity.x > 0:
		$AnimatedSprite.flip_h = false
	if velocity.x < 0:
		$AnimatedSprite.flip_h = true




func _on_Zona1_body_entered(body):
	if body.name == 'Tauro':
		body.velocity.x *= -1

func _on_Zona2_body_entered(body):
	if body.name == 'Tauro':
		body.velocity.x *= -1


func _on_Hitbox_area_entered(area):
	if area.is_in_group("arma"):
		morir = true
		get_parent().queue_free()
