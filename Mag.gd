extends KinematicBody2D
var esquerra = Vector2(1500, 2000)
var dreta
var posicio_inicial
func _ready():
	posicio_inicial = global_position
	
func _process(delta):
	if posicio_inicial.distance_to(global_position):
		move_and_slide(esquerra, Vector2.RIGHT)
	
	
