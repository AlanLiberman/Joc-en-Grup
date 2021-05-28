extends Area2D





func _on_murisio_body_entered(body):
	if body.name == 'Jugador':
		body.vida -= 100
