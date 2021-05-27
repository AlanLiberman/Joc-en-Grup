extends Node2D

var dmg: float = 10

func _on_Aigua2_body_entered(body):
	if body.name == 'Test':
		body.velocity.x = body.velocity.x * 0.75
		body.velocity.y = body.velocity.y * 0.75
		$Timer.start()
		print('COUNTDOWN')
	
func _on_Timer_timeout():
	$TickDmg.start()
	print('TICK')

func _on_TickDmg_timeout():
	$Test.vida -= dmg
	print('DMG')
	if $Test.vida <= 0:
		$TickDmg.stop()
		print('DEAD')

func _on_Aigua2_body_exited(body):
	if body.name == 'Test':
		$TickDmg.stop()
		body.velocity.x = round(body.velocity.x * 1.333)
		body.velocity.y = round(body.velocity.y * 1.333)
