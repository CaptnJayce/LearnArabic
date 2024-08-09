extends Node

# (Jayce) CHANGE TO USER:// BEFORE PUBLISHING !!!!! VERY IMPORTANT
var save_path = "res://learnarabic_save.save"

var stage1
var stage2
var stage3
var stage4

var stage1_check
var stage2_check
var stage3_check 
var stage4_check

var beginner
var rookie
var intermediate
var advanced
var fluent

var skill_dict = {
	"beginner" = false,
	"rookie" = false,
	"intermediate" = false,
	"advanced" = false,
	"fluent" = false
}

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
		skill_dict = file.get_var()
	else:
		print("file doesn't exist")

func save_data():
	var file = FileAccess.open(save_path, FileAccess.WRITE)
	file.store_var(stage_check_dict)
	file.store_var(stage_dict)
	file.store_var(skill_dict)

func delete_data():
	DirAccess.remove_absolute(save_path)
	get_tree().quit()
