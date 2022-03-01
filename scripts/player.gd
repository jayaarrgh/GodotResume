extends KinematicBody2D

const GRAVITY = 650
const JUMP = 350
const SPEED = 150

var velocity = Vector2.ZERO

onready var anim = $AnimationPlayer

func _ready():
	pass # Replace with function body.

func _input(event):
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	elif Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	else:
		velocity.x = 0

#func _process(delta):
#	pass

func _physics_process(delta):
	if not self.is_on_floor():
		velocity.y += GRAVITY * delta
	else:
		if Input.is_action_just_pressed("ui_select"):
			velocity.y = -JUMP
			anim.play("jump")
		
	velocity = move_and_slide(velocity, Vector2.UP)
