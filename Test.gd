extends KinematicBody2D

var velocity : Vector2
var vida = 100

func _ready():
	visible = true
	velocity = Vector2.ZERO


func _process(delta):
	if Input.is_action_pressed("down") :
		velocity += Vector2.DOWN * 100
		$AnimatedSprite.flip_h = false
	elif Input.is_action_pressed("right"):
		velocity += Vector2.RIGHT * 100
		$AnimatedSprite.flip_h = false
	if Input.is_action_pressed("up") :
		velocity += Vector2.UP * 100
		$AnimatedSprite.flip_h = true
	if Input.is_action_pressed("left"):
		velocity += Vector2.LEFT * 100
		$AnimatedSprite.flip_h = true
		
	velocity = move_and_slide(velocity, Vector2.UP)
	mort()

func mort():
	if vida <= 0:
		$AnimatedSprite.visible = false
