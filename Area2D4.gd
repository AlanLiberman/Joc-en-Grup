extends Area2D


func _ready():
	randomize()

func _on_Area2D4_area_entered(area):
	area.position = Vector2(49000 + rand_range(1000,1700),-2000+ rand_range(-500,650))
