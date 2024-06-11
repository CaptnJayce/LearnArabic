extends VBoxContainer

# CAPTNJAYCE #
# uses stageX and stageX_check variables to update which scenes are accessible 
# as well as which checkboxes are ticked.
# the @onready learn, review and test are used to access the checkboxes as a var.
# check_box() is called everytime the scene is ready to update the checkboxes
# with each scene load. 

@onready var learn = $LearnContainer/LearnCheck
@onready var review = $ReviewContainer/ReviewCheck
@onready var test = $TestContainer/TestCheck

func _ready():
	check_box()

func _on_learn_pressed():
	get_tree().change_scene_to_file("res://Jayce/Scenes/LRTP/Learn.tscn")

func _on_review_pressed():
	if Global.stage2 == true:
		get_tree().change_scene_to_file("res://Jayce/Scenes/LRTP/Review.tscn")

func _on_test_pressed():
	if Global.stage3 == true:
		get_tree().change_scene_to_file("res://Jayce/Scenes/LRTP/Test.tscn")

func _on_practice_pressed():
	if Global.stage4 == true:
		get_tree().change_scene_to_file("res://Jayce/Scenes/LRTP/Practice.tscn")

func check_box():
	if Global.stage1_check == true:
		learn.button_pressed = true
	if Global.stage2_check == true:
		review.button_pressed = true
	if Global.stage3_check == true:
		test.button_pressed = true


