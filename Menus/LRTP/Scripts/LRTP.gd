extends Node2D

@export var unlock : String

# (Jayce) Progression System explanation:
# Every frame it checks if the "return" (escape) button has been pressed.
# When the complete button is pressed:
# 1) stageX_check is set to true, this ticks the checkbox on the StudyOptions scene.
# 2) stageX is set to true, this unlocks the next stage.

func _process(_delta):
	if Input.is_action_pressed("return"):
		get_tree().change_scene_to_file("res://Menus/LRTP/StudyOptions.tscn")

func _on_complete_pressed():
	if unlock == "stage2":
		Global.stage_check_dict["stage1_check"] = true
		Global.stage_dict["stage2"] = true
	if unlock == "stage3":
		Global.stage_check_dict["stage2_check"] = true
		Global.stage_dict["stage3"] = true
	if unlock == "stage4":
		Global.stage_check_dict["stage3_check"] = true
		Global.stage_dict["stage4"] = true

	Global.save_data()
	get_tree().change_scene_to_file("res://Menus/LRTP/StudyOptions.tscn")

