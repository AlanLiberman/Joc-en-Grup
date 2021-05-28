extends Area2D


func _on_Flor_blava_body_entered(body):
	body.velocitat = Vector2(0,-2000)
