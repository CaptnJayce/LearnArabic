extends ColorRect

var buttonClick = preload("res://Sounds/UI/click3.wav")

func _on_learn_pressed() -> void:
	AudioManager.playClick()
	get_tree().change_scene_to_file("res://UI/LearnMenu.tscn")

func _on_review_pressed() -> void:
	AudioManager.playClick()
	get_tree().change_scene_to_file("res://UI/ReviewMenu.tscn")

func _on_test_pressed() -> void:
	AudioManager.playClick()
	get_tree().change_scene_to_file("res://UI/TestMenu.tscn")

func _on_practice_pressed() -> void:
	AudioManager.playClick()
	get_tree().change_scene_to_file("res://UI/PracticeMenu.tscn")

func _on_settings_pressed() -> void:
	AudioManager.playClick()
	get_tree().change_scene_to_file("res://UI/Settings.tscn")
