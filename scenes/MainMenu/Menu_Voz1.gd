extends AudioStreamPlayer

var audio_played = false
# Called when the node enters the scene tree for the first time.
func _ready():
	if not audio_played:
		play()
		queue_free()

