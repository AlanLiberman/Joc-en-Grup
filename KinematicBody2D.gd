extends KinematicBody2D


export var gravity = 2500.0
export var speed = Vector2(300,1000)
var velocitat = Vector2.ZERO
var moviment = Vector2(0,0)
var Monedes = 0
var atacant = false
var vida:int = 100 setget perd_vida
func _physics_process(delta):
	$Area2D/CollisionShape2D.set_deferred('disabled',true)
	velocitat.x = 0
	if Input.is_action_pressed("ui_up"):
		if is_on_floor():
			velocitat.y += -575 * 2
	if Input.is_action_pressed("ui_left"):
		velocitat.x = -750 * 1
	if Input.is_action_pressed("ui_right"):
		velocitat.x = 750 * 1
	velocitat.y += gravity * delta
	velocitat = move_and_slide(velocitat,Vector2.UP)
	

			
	if not atacant:
		if velocitat.x > 0:
			$AnimatedSprite.flip_h = false
			$Area2D.scale.x=1
		elif velocitat.x < 0:
			$AnimatedSprite.flip_h = true
			$Area2D.scale.x=-1
		#if velocitat.y < 0 && is_on_floor()==false:
			$AnimatedSprite.play("Caure")
		#if velocitat.y > 0==false && is_on_floor()==false:
			$AnimatedSprite.play("Caure")
		if velocitat.x == 0:
			$AnimatedSprite.play("Quiet")

		#if Input.is_action_just_pressed("Atacar"):
			$AnimatedSprite.play("Atacar")		
			atacant = true
			$Area2D/CollisionShape2D.set_deferred('disabled',false)

		
	animate(velocitat)
func animate(velocitat:Vector2):
	if velocitat.x > 0:
		$AnimatedSprite.play("Correr")
	if velocitat.x < 0:
		$AnimatedSprite.play("Correr")
	if velocitat == Vector2.ZERO:
		$AnimatedSprite.play("Quiet")
		
		
func _on_AnimatedSprite_animation_finished():
	if $AnimatedSprite.animation == "Saltar":
		$AnimatedSprite.animation = "Correr"
	if $AnimatedSprite.animation == "Atacar":
		atacant = false
func process(delta):
	if Input.is_action_just_pressed("Curar"):
		self.vida -= 10
func perd_vida(nova_vida):
	vida -= nova_vida
	$textureporgress.value = vida
	if vida <= 0:
		queue_free()
