extends Area2D


func _on_Area2D_body_entered(body):
	if body.name == 'Jugador':
		body.velocitat = Vector2(0,-2300)
