extends ColorRect

func _on_words_pressed() -> void:
	AudioManager.playClick()
	get_tree().change_scene_to_file("res://UI/LearnUI/Words.tscn")

func _on_letters_pressed() -> void:
	AudioManager.playClick()
	get_tree().change_scene_to_file("res://UI/LearnUI/Letters.tscn")

func _on_numbers_pressed() -> void:
	AudioManager.playClick()
	get_tree().change_scene_to_file("res://UI/LearnUI/Numbers.tscn")
