extends Node2D


func _on_V_body_entered(body):
	if body.name == 'Jugador':
		body.position = Vector2(18250,-1150)


func _on_H_body_entered(body):
	if body.name == 'Jugador':
		body.position = Vector2(19350,0)


func _on_H2_body_entered(body):
	if body.name == 'Jugador':
		body.position = Vector2(20050,-500)
