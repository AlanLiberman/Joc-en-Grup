extends Area2D





func _on_limits_body_entered(body):
	body.vida -= 100
