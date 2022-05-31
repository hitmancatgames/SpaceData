extends KinematicBody2D

const SPEED = 300
var velocity = Vector2()

func _physics_process(delta):
	if Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_right"):
		velocity.x = 0
	if Input.is_action_pressed("ui_left"):
		velocity.x = -SPEED
	if Input.is_action_pressed("ui_right"):
		velocity.x = SPEED
	move_and_slide(velocity)
pass
