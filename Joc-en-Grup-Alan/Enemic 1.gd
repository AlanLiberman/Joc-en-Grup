extends KinematicBody2D

export var gravity = 3000.0
export var speed = Vector2(300,1000)
var velocitat = Vector2.ZERO
var moviment = Vector2(300,0)
func _physics_process(delta):
	velocitat.x += 3000
	velocitat.y += gravity
	if velocitat.x > 0:
		$Enemic.play("Caminar")
		$Enemic.flip_h = false
	if velocitat.x < 0:
		$Enemic.play("Caminar")
		$Enemic.flip_h = true
	
