extends Node2D

var dmg: float = 10

func _on_Aigua2_body_entered(body):
	if body.name == 'Jugador':
		$Timer.start()
		print('COUNTDOWN')
	
func _on_Timer_timeout():
	$TickDmg.start()
	print('TICK')

func _on_TickDmg_timeout():
	$Jugador.vida -= dmg
	print('DMG')

func _on_Aigua2_body_exited(body):
	if body.name == 'Jugador':
		$TickDmg.stop()
