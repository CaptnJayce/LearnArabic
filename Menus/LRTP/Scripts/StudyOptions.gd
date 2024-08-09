extends VBoxContainer

@onready var learn = $LearnContainer/LearnCheck
@onready var review = $ReviewContainer/ReviewCheck
@onready var test = $TestContainer/TestCheck

func _ready():
	Global.load_data()
	check_box()

	if !Global.skill_dict["beginner"] && !Global.skill_dict["rookie"] && !Global.skill_dict["intermediate"] && !Global.skill_dict["advanced"] && !Global.skill_dict["fluent"]:
		get_tree().change_scene_to_file("res://Menus/SkillLevel/SkillLevel.tscn")

func _on_learn_pressed():
	get_tree().change_scene_to_file("res://Menus/LRTP/Learn.tscn")

func _on_review_pressed():
	if Global.stage_dict["stage2"] == true:
		get_tree().change_scene_to_file("res://Menus/LRTP/Review.tscn")

func _on_test_pressed():
	if Global.stage_dict["stage3"] == true:
		get_tree().change_scene_to_file("res://Menus/LRTP/Test.tscn")

func _on_practice_pressed():
	if Global.stage_dict["stage4"] == true:
		get_tree().change_scene_to_file("res://Menus/LRTP/Practice.tscn")

func _on_button_pressed():
	Global.delete_data()
	print("deleting data...")

func check_box():
	if Global.stage_check_dict["stage1_check"] == true:
		learn.button_pressed = true
	if Global.stage_check_dict["stage2_check"] == true:
		review.button_pressed = true
	if Global.stage_check_dict["stage3_check"] == true:
		test.button_pressed = true





