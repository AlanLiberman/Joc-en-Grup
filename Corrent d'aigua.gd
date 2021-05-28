extends Node2D

func _on_Corrent_1_body_entered(body):
	if body.name == 'Jugador':
		body.velocitat.x += body.velocitat.x * 5
		body.velocitat.y += body.velocitat.y * 5

func _on_Corrent_2_body_entered(body):
	if body.name == 'Jugador':
		body.velocitat.x += body.velocitat.x * 5
		body.velocitat.y += body.velocitat.y * 5

func _on_Corrent_3_body_entered(body):
	if body.name == 'Jugador':
		body.velocitat.x += body.velocitat.x * 5
		body.velocitat.y += body.velocitat.y * 5

func _on_Corrent_1_body_exited(body):
	if body.name == 'Jugador':
		body.velocitat.x += body.velocitat.x * 0.2
		body.velocitat.y += body.velocitat.y * 0.2

func _on_Corrent_2_body_exited(body):
	if body.name == 'Jugador':
		body.velocitat.x += body.velocitat.x * 0.2
		body.velocitat.y += body.velocitat.y * 0.2

func _on_Corrent_3_body_exited(body):
	if body.name == 'Jugador':
		body.velocitat.x += body.velocitat.x * 0.2
		body.velocitat.y += body.velocitat.y * 0.2
