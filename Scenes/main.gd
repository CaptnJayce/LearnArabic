extends Node2D

var highlighted_letters = []
var word_complete = false
var valid_words = ["ALIF", "BAHA"]

# Called when the node enters the scene tree for the first time.
func _ready():
	var letter_nodes = get_tree().get_nodes_in_group("letter")
	
	for letter in letter_nodes:
		letter.connect("letter_highlighted", self._on_letter_highlighted)
		letter.connect("letter_unhighlighted", self._on_letter_unhighlighted)

func _on_letter_highlighted(letter):
	highlighted_letters.append(letter)
	if is_word_complete(highlighted_letters):
		word_complete = true

func _on_letter_unhighlighted(letter):
	if not word_complete:
		highlighted_letters.remove(letter)
		letter.get_node("Sprite2D").modulate = Color.WHITE
		

func is_word_complete(highlighted_letters):
	var word = ""
	for letter in highlighted_letters:
		word += letter.name
		
	return word in valid_words


func _on_button_pressed():
	get_tree().change_scene_to_file("res://Scenes/Alif.tscn")
