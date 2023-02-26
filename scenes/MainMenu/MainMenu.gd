extends Node2D

# Obtener la instancia del Label y el Area2D
var label = get_node("$TextoComenzar/TextoComenzar")
var area = get_node("$TextoComenzar/Label_TextoComenzar")


func _ready():
	# Conectar las señales mouse_entered() y mouse_exited() del Area2D
	area.connect("mouse_entered", self, "_on_area_mouse_entered")
	area.connect("mouse_exited", self, "_on_area_mouse_exited")

# Definir las funciones _on_area_mouse_entered() y _on_area_mouse_exited()
func _on_area_mouse_entered():
	label.text = "Nuevo texto del Label"

func _on_area_mouse_exited():
	label.text = "Texto original del Label"
