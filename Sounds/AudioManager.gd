extends Node

@onready var clickSound: AudioStreamPlayer = $click
@onready var musicTest: AudioStreamPlayer = $testMusic

func _ready():
	playMusic()

func playClick():
	clickSound.play()

func playMusic():
	if Global.musicVal == null:
		musicTest.volume_db = -10
	else:
		musicTest.volume_db = Global.musicVal
	print(Global.musicVal)
	musicTest.play()
