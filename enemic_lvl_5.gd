extends Area2D

var morir = false


func _on_Enemic_lvl_5_area_entered(area):
	if area.is_in_group("arma"):
		morir = true
		get_parent().queue_free()


func _on_Enemic_lvl_5_body_entered(body):
	body.vida -= 25
