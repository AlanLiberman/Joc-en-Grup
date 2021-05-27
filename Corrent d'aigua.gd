extends Node2D

func _on_Corrent_1_body_entered(body):
	if body.name == 'Jugador':
		body.velocitat += body.velocity * 100


func _on_Corrent_2_body_entered(body):
	if body.name == 'Jugador':
		body.velocitat += Vector2.RIGHT * 100


func _on_Corrent_3_body_entered(body):
	if body.name == 'Jugador':
		body.velocitat += Vector2.RIGHT * 100
