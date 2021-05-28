extends Node2D

func _on_LaMort_body_entered(body):
	if body.name == 'jugador':
		body.vida -= 100
