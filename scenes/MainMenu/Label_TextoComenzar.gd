extends RichTextLabel

func _ready():
	
	self.connect("mouse_entered", self, "_on_label_mouse_entered")
	self.connect("mouse_exited", self, "_on_label_mouse_exited")

func _on_label_mouse_entered():
	self.text = "うん"

func _on_label_mouse_exited():
	self.text = "始める"
	
