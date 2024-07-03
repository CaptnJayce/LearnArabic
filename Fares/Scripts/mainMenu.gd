extends Control

	
# Called when the node enters the scene tree for the first time.
func _ready():
	$LettersBtn.grab_focus()

func _on_start_btn_pressed():
	get_tree().change_scene_to_file("res://Scenes/Letters.tscn")

func _on_quit_btn_pressed():
	get_tree().quit()
	
