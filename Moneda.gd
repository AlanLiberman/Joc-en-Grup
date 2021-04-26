extends Area2D

var contador_monedes = 0

func _on_Moneda_body_entered(Jugador):
	self.visible = false
	contador_monedes += 1
