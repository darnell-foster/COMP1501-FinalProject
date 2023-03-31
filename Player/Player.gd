extends KinematicBody2D

#------Animation Constants---------
var idle = false;
var running = false;
#----------------------------------
export var speed = 400
var screen_size
var velocity := Vector2.ZERO

export var jump_heght : float =100.0
export var jump_time_to_peak : float =0.5
export var jump_time_to_decent : float =0.4

onready var jump_velocity : float =((2.0 * jump_heght)/jump_time_to_peak)* -1.0
onready var jump_gravity : float =((-2.0 * jump_heght)/(jump_time_to_peak*jump_time_to_peak))*-1.0
onready var fall_gravity : float =((-2.0 * jump_heght)/(jump_time_to_decent*jump_time_to_decent))*-1.0
onready var sprite = get_node("AnimatedSprite")

func _ready():
	screen_size = get_viewport_rect().size 

func _process(delta):
	velocity.y += get_gravity() *delta
	velocity.x = get_input_velocity() *speed
		
	if Input.is_action_pressed("jump") and is_on_floor():
		jump()
	
	# If the sprite is in the air
	if !is_on_floor(): 
		sprite.play("Jump")
		idle = false
		running = false

		
	position += velocity * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	
	velocity=move_and_slide(velocity, Vector2.UP)
	
func get_gravity()->float:
	return jump_gravity if velocity.y <0.0 else fall_gravity
	
func jump():
	velocity.y=jump_velocity

	
func get_input_velocity()->float:
	var horizontal :=0.0
	
	if Input.is_action_pressed("move_right"):
	
		#if the sprite is not facing the right flip the x scale
		if(sprite.scale.x < 0): sprite.scale.x = -1* sprite.scale.x
		horizontal += 1.0
		if(idle == true):
			sprite.play("Run")
			idle = false;
		
	if Input.is_action_pressed("move_left"):
		if(sprite.scale.x > 0):
			sprite.scale.x = -1* sprite.scale.x;
		horizontal -= 1.0
		if(idle == true):
			sprite.play("Run")
			idle = false;
	
	if(idle == false and velocity.x == 0):
		sprite.play("Idle")
		idle = true;

	
	return horizontal

