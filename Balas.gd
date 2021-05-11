extends KinematicBody2D

var velocity = Vector2(0,0)

func _ready():
	self.visible = false

func _on_Rang_body_entered(body):
	self.visible = true
	velocity.x += 700

func _on_Balas_area_exited(area):
	global_position = $"../Mag/SortidaBala".global_position
