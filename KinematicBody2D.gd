extends KinematicBody2D


export var gravity = 3500.0
export var speed = Vector2(300,1000)
var velocitat = Vector2.ZERO
var moviment = Vector2(0,0)
var atacant = false
var vida = 100
var mort = false
#var vida:int = 100 setget perd_vida
func _physics_process(delta):
	if mort == false:
		velocitat.x = 0
		if Input.is_action_pressed("ui_up"):
			if is_on_floor():
				velocitat.y += -1630
		velocitat.y += gravity * delta
		if Input.is_action_pressed("ui_left"):
			velocitat.x = -1500
		if Input.is_action_pressed("ui_right"):
			velocitat.x = 1500
		velocitat = move_and_slide(velocitat,Vector2.UP)
		
		if velocitat.x > 0:
			$AnimatedSprite/arma/CollisionShape2D.position.x = 125
		if velocitat.x < 0:
			$AnimatedSprite/arma/CollisionShape2D.position.x = -100
		if vida <= 0:
			mort()
		
		if not atacant:
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
	velocitat = Vector2(0,0)
	$AnimatedSprite.play('mort')
	$CollisionShape2D.disabled = true
	
	
	
func _on_AnimatedSprite_animation_finished():
			if $AnimatedSprite.animation == "Saltar":
				$AnimatedSprite.animation = "Correr"
			if $AnimatedSprite.animation == "Atacar":
				$AnimatedSprite/arma/CollisionShape2D.disabled = true
				atacant = false
	#func process(delta):
	#	if Input.is_action_just_pressed("Curar"):
	#		self.vida -= 10

func perd_vida(nova_vida):
		vida -= nova_vida
		$textureporgress.value = vida
		if vida <= 0:
			get_tree().change_scene("res://Menu.tscn")
			
#func _on_Timer_timeout():
#	get_tree().change_sceen("Menu.tscn")
