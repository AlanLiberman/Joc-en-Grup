extends Area2D

func _on_Portal2_body_entered(body):
	if body.name == 'Jugador':
		get_tree().change_scene("res://Nivell-4/Nivell 4/Nivell 4.tscn")
