extends Node2D

func _on_Area2D_body_entered(body):
	body.velocitat += Vector2(50, -100)
