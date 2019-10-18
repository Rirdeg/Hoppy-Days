extends KinematicBody2D

var motion = Vector2(0,0)

const SPEED = 1000
const GRAVITY = 500

func _physics_process(delta):
	#9:42 lec 36
	motion.y += GRAVITY
	if Input.is_action_pressed("left") and not Input.is_action_pressed("right"):
		motion.x = -SPEED
	elif Input.is_action_pressed("right") and not Input.is_action_pressed("left"):
		motion.x = SPEED
	else: 
		motion.x = 0
	move_and_slide(motion)