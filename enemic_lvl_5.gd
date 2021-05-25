extends Area2D

var morir = false

#func _process(delta):
#	if morir = false


func _on_Enemic_lvl_5_area_entered(area):
	if area.is_in_group("arma"):
		morir = true
		queue_free()
