extends KinematicBody2D

func _ready():
	pass

func _process(delta):
	if Input.is_action_pressed("up"):
		position+= Vector2.UP * 100
	if Input.is_action_pressed("down"):
		position += Vector2.DOWN * 100
	if Input.is_action_pressed("left"):
		position += Vector2.LEFT * 100
	if Input.is_action_pressed("right"):
		position += Vector2.RIGHT * 100
