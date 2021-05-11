extends KinematicBody2D


export var gravity = 2500.0
export var speed = Vector2(300,1000)
var velocitat = Vector2.ZERO
var moviment = Vector2(0,0)
var Monedes = 0
var atacant = false

func _physics_process(delta):
	velocitat.x = 0
	if Input.is_action_pressed("ui_up"):
		if is_on_floor():
			velocitat.y += -750*1.75 
	if Input.is_action_pressed("ui_left"):
		velocitat.x = -750 *2
	if Input.is_action_pressed("ui_right"):
		velocitat.x = 750 *2
	velocitat.y += gravity * delta
	velocitat = move_and_slide(velocitat,Vector2.UP)
	
