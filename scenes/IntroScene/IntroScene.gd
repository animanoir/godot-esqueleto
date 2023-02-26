extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Fader/AnimationPlayer.play("FadeIn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_AnimationPlayer_animation_finished(_anim_name):
	print("Terminó la animación del inicio.")
	get_tree().change_scene("res://scenes/MainMenu/MainMenu.tscn")
