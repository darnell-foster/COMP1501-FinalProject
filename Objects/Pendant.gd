extends Area2D

signal collect_pendant

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	$Sprite.visible = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Pendant_body_entered(body):
	if body is KinematicBody2D and body.name == "Player":
		emit_signal("collect_pendant")
		$Sprite.visible = false
