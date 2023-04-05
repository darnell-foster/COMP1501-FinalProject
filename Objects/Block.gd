extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



#check for collision, if object is above make solid
func onFloor():
	var bodiesColliding = get_colliding_bodies()
	
	if (bodiesColliding.has("TileMap")):
		#Mode = "move and slide"
		pass
	pass
