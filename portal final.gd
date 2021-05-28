extends Area2D





func _on_portal_final_body_entered(body):
	get_tree().change_scene("res://pantalla_final.tscn")
