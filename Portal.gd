extends Area2D

func _on_Portal_body_entered(body):
	if body.name == 'Jugador':
		get_tree().change_scene("res://Menu.tscn")
