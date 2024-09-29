extends Node

@onready var clickSound: AudioStreamPlayer = $click
@onready var musicTest: AudioStreamPlayer = $testMusic

func _ready():
	playMusic()

func playClick():
	clickSound.play()

func playMusic():
	musicTest.play()
	if Global.musicVal == null:
		musicTest.volume_db = -20
	else:
		musicTest.volume_db = Global.musicVal
