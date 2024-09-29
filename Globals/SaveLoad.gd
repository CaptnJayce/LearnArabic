extends Node

# C:\Users\x\AppData\Roaming\ParryTheFloorSave
var save_path = "user://LearnArabic.save"

func _ready():
	SaveLoad.load_game()

func load_game():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		Global.musicVal = file.get_var()
	else:
		Global.musicVal = -10

func save_game():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(Global.musicVal)
