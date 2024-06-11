extends Node2D

@export var unlock : String

# CAPTNJAYCE #
# Every frame it checks if the "return" button has been pressed (aka 'esc').
# There are two checks that are carried out when the complete button is pressed,
# 1) stageX_check is set to true, this ticks the checkbox on the StudyOptions scene.
# 2) stageX is set to true, this unlocks the next stage.

func _process(_delta):
	if Input.is_action_pressed("return"):
		get_tree().change_scene_to_file("res://Jayce/Scenes/StudyOptions.tscn")

func _on_complete_pressed():
	if unlock == "stage2":
		Global.stage1_check = true
		Global.stage2 = true
	if unlock == "stage3":
		Global.stage2_check = true
		Global.stage3 = true
	if unlock == "stage4":
		Global.stage3_check = true
		Global.stage4 = true

	get_tree().change_scene_to_file("res://Jayce/Scenes/StudyOptions.tscn")

