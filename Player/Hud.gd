extends CanvasLayer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Container/HBoxContainer/ItemFrame/Sword.visible = false
	$Container/HBoxContainer/ItemFrame2/Pendant.visible = false
	$Container/HBoxContainer/ItemFrame3/Jewel.visible = false



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass




func _on_Sword_collect_sword():
	$Container/HBoxContainer/ItemFrame/Sword.visible = true
	


func _on_Jewel_collect_jewel():
	$Container/HBoxContainer/ItemFrame3/Jewel.visible = true


func _on_Pendant_collect_pendant():
	$Container/HBoxContainer/ItemFrame2/Pendant.visible = true
