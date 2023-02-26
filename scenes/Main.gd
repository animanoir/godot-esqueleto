extends Node2D

func _ready():
	# Define un FPS fijo.
	Engine.set_target_fps(30)

func _process(_delta):
	if Input.is_action_pressed("ui_cancel"):
		print("Se cerró el juego con la tecla ESC.")
		get_tree().quit()
