extends Node2D

func _on_Corrent_1_body_entered(body):
	if body.name == 'Jugador':
		body.velocitat += Vector2.RIGHT * 100
