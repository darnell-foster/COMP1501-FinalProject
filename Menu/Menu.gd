extends CanvasLayer



# Called when the node enters the scene tree for the first time.
func _ready():
	set_visible(false) 


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("Menu") and is_visible() == false:
		set_visible(true)

	
	elif Input.is_action_just_pressed("Menu") and is_visible() == true:
		set_visible(false)


func _on_Quit_pressed():
	get_tree().change_scene("res://Title Screen/TitleScreen.tscn")	


func _on_Reset_pressed():
	get_tree().reload_current_scene()
