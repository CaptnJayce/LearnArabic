extends Node2D

func _on_btn_beginner_pressed():
	Global.skill_dict["beginner"] = true
	Global.save_data()
	get_tree().change_scene_to_file("res://Menus/LRTP/StudyOptions.tscn")

func _on_btn_rookie_pressed():
	Global.skill_dict["rookie"] = true
	Global.save_data()
	get_tree().change_scene_to_file("res://Menus/LRTP/StudyOptions.tscn")

func _on_btn_intermediate_pressed():
	Global.skill_dict["intermediate"] = true
	Global.save_data()
	get_tree().change_scene_to_file("res://Menus/LRTP/StudyOptions.tscn")
	
func _on_btn_advanced_pressed():
	Global.skill_dict["advanced"] = true
	Global.save_data()
	get_tree().change_scene_to_file("res://Menus/LRTP/StudyOptions.tscn")
	
func _on_btn_fluent_pressed():
	Global.skill_dict["fluent"] = true
	Global.save_data()
	get_tree().change_scene_to_file("res://Menus/LRTP/StudyOptions.tscn")
