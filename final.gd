extends Area2D


func _on_final_body_entered(body):
	get_tree().change_scene("res://Nivell 2.tscn")
