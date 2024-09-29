extends Node2D

@onready var h_slider: HSlider = $HSlider

func _ready() -> void:
	if Global.musicVal != null:
		h_slider.value = Global.musicVal

func _process(_delta) -> void:
	Global.musicVal = h_slider.value
	h_slider.value = Global.musicVal

func _on_button_pressed() -> void:
	AudioManager.playMusic()
