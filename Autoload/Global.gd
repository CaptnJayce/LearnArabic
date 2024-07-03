extends Node

# (Jayce) CHANGE TO USER:// BEFORE PUBLISHING !!!!! VERY IMPORTANT
var save_path = "res://learnarabic_save.save"


# (Jayce) stageX and stageX_check explanation:
# stageX is used to determine which stages are unlocked, they are modified in LRTP.gd
# and checked in StudyOptions.gd
# stageX_check is used to determine which checkboxes are ticked, they are modified in LRTP.gd
# and checked in StudyOptions.gd.

# (Jayce) Save/Load System Expalantion:
# all the data will be stored in dictionaries and saved/loaded with the get_var()
# and store_var() functions respectively. 
# It's VERY important to keep this functionality within an autoloaded script.
# Global.dictionary_name["variable_name"] = x

var stage1
var stage2
var stage3
var stage4

var stage1_check
var stage2_check
var stage3_check 
var stage4_check

var stage_check_dict = {
	"stage1_check" : false,
	"stage2_check" : false,
	"stage3_check" : false,
	"stage4_check" : false
}

var stage_dict = {
	"stage1" : true,
	"stage2" : false,
	"stage3" : false,
	"stage4" : false
}

func load_data():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		print("file exists")
		stage_check_dict = file.get_var()
		stage_dict = file.get_var()
	else:
		print("file doesn't exist")

func save_data():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(stage_check_dict)
	file.store_var(stage_dict)

func delete_data():
	DirAccess.remove_absolute(save_path)
	get_tree().quit()
