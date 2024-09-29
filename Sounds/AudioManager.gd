extends Node

@onready var clickSound: AudioStreamPlayer = $click

func playClick():
	clickSound.play()
