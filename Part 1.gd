extends Area2D

func _on_Area2D_body_entered(body):
	if body.name == 'Jugador':
		body.position = Vector2(8695.309,-410.545)