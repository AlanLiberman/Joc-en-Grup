extends Area2D
var velocitat = -500
func _physics_process(delta):
	position.x += velocitat  * delta
	rotation_degrees += -90 * delta



func _on_Bala_body_entered(body):
	body.position = Vector2(43250,-1500)


func _on_Bala3_body_entered(body):
	body.position = Vector2(43250,-1500)


func _on_Bala2_body_entered(body):
	body.position = Vector2(43250,-1500)
