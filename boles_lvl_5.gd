extends Area2D





func _on_boles_lvl_5_area_entered(area):
	area.position = Vector2(23400 + rand_range(100,-100),-3700+ rand_range(0,0))
