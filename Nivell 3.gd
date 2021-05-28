extends Node2D

var dmg: float = 10

func _on_Aigua2_body_entered(body):
	if body.name == 'Jugador':
		if Input.is_action_pressed("ui_accept"):
			body.gravity = 0
		body.velocitat.x = body.velocitat.x * 0.75
		body.velocitat.y = body.velocitat.y * 0.75
		$Timer.start()
		print('COUNTDOWN')
	
func _on_Timer_timeout():
	$TickDmg.start()
	print('TICK')

func _on_TickDmg_timeout():
	$Jugador.vida -= dmg
	print('DMG')
	if $Jugador.vida <= 0:
		$TickDmg.stop()
		print('DEAD')

func _on_Aigua2_body_exited(body):
	if body.name == 'Jugador':
		$TickDmg.stop()
		body.velocitat.x = round(body.velocitat.x * 1.333)
		body.velocitat.y = round(body.velocitat.y * 1.333)

