extends Area2D

var audio_played = false
var audio = preload()

func _process(delta):
	if is_mouse_over():
		if not audio_played:
			AudioServer.play(audio)
			audio_played = true
	else:
		audio_played = false
