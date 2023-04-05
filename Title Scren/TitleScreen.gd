extends Control

func _on_Start_pressed():
	# Load the new scene
	get_tree().change_scene("res://TestMap/tesMap.tscn")
