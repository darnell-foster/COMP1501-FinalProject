extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var done = false
var max_frames = 24

# Called when the node enters the scene tree for the first time.
func _ready():
	done = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if $CenterContainer/AnimatedSprite.get_frame() != max_frames:
		if Input.is_action_just_pressed("jump"):
			$CenterContainer/AnimatedSprite.set_frame( $CenterContainer/AnimatedSprite.get_frame() +1 )
			if $CenterContainer/Label.visible == true: 
				$CenterContainer/Label.visible = false
	else:
		get_tree().change_scene("res://TutorialRoom1/TutorialRoom1.tscn")	
	

func _on_AnimatedSprite_animation_finished():
	done = true
