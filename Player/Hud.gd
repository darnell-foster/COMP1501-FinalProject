extends CanvasLayer

var collected = []

# Called when the node enters the scene tree for the first time.
func _ready():
	if  collected.has("sword"):
		$Container/HBoxContainer/ItemFrame/Sword.visible = true
	else:
		$Container/HBoxContainer/ItemFrame/Sword.visible = false
		
	if collected.has("pendant"):
		$Container/HBoxContainer/ItemFrame2/Pendant.visible = true
	else:
		$Container/HBoxContainer/ItemFrame2/Pendant.visible = false
		
	if collected.has("jewel"):
		$Container/HBoxContainer/ItemFrame3/Jewel.visible = true
	else:
		$Container/HBoxContainer/ItemFrame3/Jewel.visible = false



func _on_Sword_collect_sword():
	$Container/HBoxContainer/ItemFrame/Sword.visible = true
	collected.append("sword")


func _on_Jewel_collect_jewel():
	$Container/HBoxContainer/ItemFrame3/Jewel.visible = true
	collected.append("jewel")

func _on_Pendant_collect_pendant():
	$Container/HBoxContainer/ItemFrame2/Pendant.visible = true
	collected.append("pendant")
