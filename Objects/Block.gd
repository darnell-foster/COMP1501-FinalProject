extends KinematicBody2D


# Declare member variables here. Examples:
export var pushForce : float = 100
var velocity := Vector2.ZERO
export var fall_gravity : float = 1000

# Called when the node enters the scene tree for the first time.
func _ready():
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	velocity.y += fall_gravity *delta
	
	
	position += velocity * delta
	velocity = move_and_slide(velocity, Vector2.UP)
	


func _on_PushBoundLeft_body_entered(body):
	if body is KinematicBody2D:
		velocity.x += pushForce

func _on_PushBoundLeft_body_exited(body):
	if body is KinematicBody2D:
		velocity.x = 0

func _on_PushBoundsRight_body_entered(body):
	if body is KinematicBody2D:
		velocity.x += -1*pushForce

func _on_PushBoundsRight_body_exited(body):
	if body is KinematicBody2D:
		velocity.x = 0
