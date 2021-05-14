extends Sprite

func _ready():
	region_filter_clip = true

func _on_Level_1_body_entered(body):
	get_tree().change_scene("res://Nivell .tscn")

func _on_Level_2_body_entered(body):
	get_tree().change_scene("res://Nivell 2.tscn")

func _on_Level_3_body_entered(body):
	get_tree().change_scene("res://Nivell 2.tscn")

func _on_Level_4_body_entered(body):
	get_tree().change_scene("res://Nivell 2.tscn")

func _on_Level_5_body_entered(body):
	get_tree().change_scene("res://Nivell 2.tscn")
