extends KinematicBody2D


export var gravity = 3000.0
export var speed = Vector2(300,1000)
var velocitat = Vector2.ZERO
var moviment = Vector2(0,0)
var Monedes = 0
var atacant = false
func _physics_process(delta):
	velocitat.x = 0
	if Input.is_action_pressed("ui_up"):
		if is_on_floor():
			velocitat.y += -1500	
	if Input.is_action_pressed("ui_left"):
		velocitat.x = -1200
	if Input.is_action_pressed("ui_right"):
		velocitat.x = 1200
	velocitat.y += gravity * delta
	velocitat = move_and_slide(velocitat,Vector2.UP)
	if not atacant:
		if velocitat.x > 0:
			$AnimatedSprite.flip_h = false
			$AnimatedSprite.play("Correr")
		elif velocitat.x < 0:
			$AnimatedSprite.flip_h = true
			$AnimatedSprite.play("Correr")
		if velocitat.y < 0:
			$AnimatedSprite.play("Saltar")
		if velocitat.y > 0:
			$AnimatedSprite.play("Caure")
		if velocitat.x == 0:
			$AnimatedSprite.play("Quiet")

		if Input.is_action_just_pressed("Atacar"):
			$AnimatedSprite.play("Atacar")		
			atacant = true
			
func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "Saltar":
		$AnimatedSprite.animation = "Correr"
	if $AnimatedSprite.animation == "Atacar":
		atacant = false
