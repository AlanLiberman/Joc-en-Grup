extends KinematicBody2D


export var gravity = 3500.0
export var speed = Vector2(300,1000)
var velocitat = Vector2.ZERO
var moviment = Vector2(0,0)
var atacant = false
var vida = 100 setget perd_vida
var mort = false
#var vida:int = 100 setget perd_vida
func _physics_process(delta):
	if mort == false:
		velocitat.x = 0
		if Input.is_action_pressed("ui_up"):
			if is_on_floor():
				print('toco terra')
				velocitat.y += -1630
		velocitat.y += gravity * delta
		if Input.is_action_pressed("ui_left"):
			velocitat.x = -1500
		if Input.is_action_pressed("ui_right"):
			velocitat.x = 1500
		velocitat = move_and_slide(velocitat,Vector2.UP)
		print(position.y)
		
		if velocitat.x > 0:
			$AnimatedSprite/arma/CollisionShape2D.position.x = 125
		if velocitat.x < 0:
			$AnimatedSprite/arma/CollisionShape2D.position.x = -100
		if vida <= 0:
			mort()
		
		if not atacant and mort == false:
			if velocitat.x == 0:
				$AnimatedSprite.play("Quiet")
			if velocitat.x < 0:
				$AnimatedSprite.play("Correr")
				$AnimatedSprite.flip_h = true
			if velocitat.x > 0:
				$AnimatedSprite.play("Correr")
				$AnimatedSprite.flip_h = false
			if velocitat.y > 0:
				$AnimatedSprite.play("Caure")
			if velocitat.y < 0:
				$AnimatedSprite.play("Saltar")
			if Input.is_action_just_pressed("Atacar"):
				$AnimatedSprite.play("Atacar")		
				atacant = true
				$AnimatedSprite/arma/CollisionShape2D.disabled = false


func mort():
	mort = true
	atacant = false
	velocitat = Vector2(0,0)
	$AnimatedSprite.play('mort')
	$CollisionShape2D.disabled = true
	
	
	
	
func _on_AnimatedSprite_animation_finished():
			if $AnimatedSprite.animation == "Saltar":
				$AnimatedSprite.animation = "Correr"
			if $AnimatedSprite.animation == "Atacar":
				$AnimatedSprite/arma/CollisionShape2D.disabled = true
				atacant = false
			if $AnimatedSprite.animation == 'mort':
				get_tree().change_scene("res://Menu.tscn")
				
func perd_vida(nova_vida):
		vida = nova_vida
		$TextureProgress.value = vida
