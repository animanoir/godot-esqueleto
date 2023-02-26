extends Area2D

export (int) var speed
export (float) var smoothing
var target_velocity = Vector2()
var velocity = Vector2()
var screensize = Vector2(640, 640)

func _ready():
	# Centra la posición de Player en el centro.
	position.x = screensize.x / 2
	position.y = screensize.y / 2

func _process(delta):
	get_input()
	velocity = velocity.linear_interpolate(target_velocity, smoothing)
	position += velocity * delta
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)

func get_input():
	target_velocity = Vector2()
	if Input.is_action_pressed("ui_left"):
		$AnimatedSprite.flip_h = true
		target_velocity.x -= 1
	if Input.is_action_pressed("ui_right"):
		target_velocity.x += 1
		$AnimatedSprite.flip_h = false
	if Input.is_action_pressed("ui_up"):
		target_velocity.y -= 1
	if Input.is_action_pressed("ui_down"):
		target_velocity.y += 1
	if target_velocity.length() > 0:
		target_velocity = target_velocity.normalized() * speed
