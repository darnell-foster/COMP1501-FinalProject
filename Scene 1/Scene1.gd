extends Node2D


func _on_Door_body_entered(body):
	if body is KinematicBody2D and body.name == "Player":
		if $HUD.collected.has("sword") and $HUD.collected.has("pendant") and $HUD.collected.has("jewel"):
			get_tree().change_scene("res://Scene 1/End.tscn")


