extends Control
# This is a basic UI element to show chat messages for our test scenarios.

@onready var user_name_label = $HBoxContainer/UserNameLabel
@onready var platform_label = $HBoxContainer/PlatformLabel
@onready var msg_label = $HBoxContainer/MessageLabel

var viewer : Viewer
var msg : String

func _ready() -> void:
	user_name_label.text = viewer.user_name
	platform_label.text = viewer.platform
	msg_label.text = msg
