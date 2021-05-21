extends Area2D

var delay: float
var dmg: float
onready var timer := $Timer


func _ready():
	delay = 5
	dmg = 100/delay

func _on_Aigua2_body_entered(body, delay):
	yield(get_tree().create_timer(5), "timeout")
	if body.name == 'Cap':
		body.vida = 0

