extends Node2D

signal letter_highlighted(letter)
signal letter_unhighlighted(letter)

func _ready():
	#connect("input_event", self._on_input_event)
	#connect("mouse_entered", self._on_letter_mouse_entered)
	#connect("mouse_exited", self._on_letter_mouse_exited)
	pass

func _on_input_event(event):
	if event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		emit_signal("letter_highlighted", self)
		$Sprite2D.modulate = Color.YELLOW
	else:
		emit_signal("letter_unhighlighted", self)
		$Sprite2D.modulate = Color.WHITE

func _on_Letter_mouse_entered():
	pass

func _on_Letter_mouse_exited():
	pass
