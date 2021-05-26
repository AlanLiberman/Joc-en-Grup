extends KinematicBody2D


export var gravity = 3500.0
var velocitat = Vector2.ZERO
var motion := Vector2()
export var morir = false
var vida = 50

func _physics_process(delta):
	velocitat = move_and_slide(velocitat,Vector2.UP)
	velocitat.y += gravity 
	velocitat.x = -300
	pass
	_flip()
	if velocitat.x > 0:
		$Esquerra.enabled = false
		$Dereta.enabled = true
	else:
	
		$Esquerra.enabled = true
		$Dereta.enabled = false
func morir():
	morir = true
	if morir == true:
		$Enemic_lvl_5_k.position = Vector2(4000,0)
		
func _next_to_left_wall() -> bool:
	return $Esquerra.is_colliding()

func _next_to_right_wall() -> bool:
	return $Dereta.is_colliding()
	
	
func _flip():
	pass
	if _next_to_right_wall() or _next_to_left_wall():
		velocitat.x *= -1
		$Enemic_lvl_5.scale.x *= -1
		$Timer.start()


func _on_Timer_timeout():
	pass
