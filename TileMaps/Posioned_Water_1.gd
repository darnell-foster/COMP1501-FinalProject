extends Node2D

func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass






func _on_water_body_entered(body):
	if body is KinematicBody2D and body.name == "Player":
		get_tree().reload_current_scene()
