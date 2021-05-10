extends Area2D


func _on_V_body_entered(body):
	body.position = Vector2(18250,-1150)


func _on_H_body_entered(body):
	body.position = Vector2(19350,0)


func _on_H2_body_entered(body):
	body.position = Vector(19750,-500)
