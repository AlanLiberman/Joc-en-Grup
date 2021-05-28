extends Area2D

func _on_LaMort_body_entered(body):
	if body.name =='Jugador':
		body.vida == 0
