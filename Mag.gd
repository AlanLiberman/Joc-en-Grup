extends KinematicBody2D

var direccio = Vector2.RIGHT
var velocitat = 300

func _ready():
	velocitat += Vector2.LEFT
	
